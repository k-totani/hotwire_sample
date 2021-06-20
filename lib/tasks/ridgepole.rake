# frozen_string_literal: true

namespace :ridgepole do
  desc 'Apply database schema'
  task apply: :environment do
    ridgepole('--apply', "--file #{schema_file}")
  rescue StandardError => e
    puts e.message
    exit 1
  end

  desc 'Check database schema diff'
  task check: :environment do
    ridgepole('--apply', "--file #{schema_file} --dry-run")
  end
  #
  # desc 'Export database schema'
  # task export: :environment do
  #   ridgepole('--export', "--output #{schema_file}")
  # end

  private

  def schema_file
    Rails.root.join('db/Schemafile.rb')
  end

  def config_file
    Rails.root.join('config/database.yml')
  end

  def ridgepole(*options)
    command = ['bundle exec ridgepole', "-E #{ENV['RAILS_ENV']}", "--config #{config_file}"]
    system [command + options].join(' ')
  end
end
