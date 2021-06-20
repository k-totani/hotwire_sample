# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'hotwire-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'redis', '~> 4.0'
gem 'ridgepole', '~> 0.9.3'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'brakeman', '~> 5.0.1'
  gem 'erb_lint', '~> 0.0.37'
  gem 'listen', '~> 3.3'
  gem 'rails_best_practices', '~> 1.20.1', require: false
  gem 'rbs', '~> 1.2.1', require: false
  gem 'rbs_rails', '~> 0.8.2', require: false
  gem 'rubocop', '~> 1.15.0'
  gem 'rubocop-performance', '~> 1.11.3'
  gem 'rubocop-rails', '~> 2.10.1'
  gem 'spring'
  gem 'steep', '~> 0.44.1'
  gem 'typeprof', '~> 0.14.1', require: false
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
