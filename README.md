# Sample Project

This project is hotwire sample project.

## Architecture

### Base

* Ruby 3

* Ruby on Rails

### Challenge

* RBS

* Steep


## Setup

```
# init frontend
yarn
# init backend
bundle install --path vendor/bundle
./bin/rails db:create db:migrate
# start server
./bin/rails s

```

## RBS Sample Script

```
bundle exec rails rbs_rails:all

git submodule add --force https://github.com/ruby/gem_rbs.git vendor/gem_rbs

bundle exec typeprof app/controllers/**/*.rb -o sig/controllers.rbs

bundle exec typeprof app/models/**/*.rb -o sig/models.rbs

bundle exec steep check
```

## Test Sample

```
bundle exec erblint .
bundle exec rubocop
bundle exec rails_best_practices
bundle exec brakema
```