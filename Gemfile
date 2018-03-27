source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.5"

# core
gem "active_model_serializers", "~> 0.10.0"
gem "carrierwave", "~> 1.0"
gem "decent_exposure"
gem "fog-aws"
gem "foreman"
gem "interactor", "~> 3.0"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.7"
gem "rails_admin", "~> 1.3"
gem "webpacker", "~> 3.2"

# services
gem "rollbar"

# auth
gem "devise"

# views
gem "active_link_to"
gem "bootstrap-sass", "~> 3.3.6"
gem "bootstrap-sass-extras"
gem "bootswatch-rails"
gem "jquery-rails"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "slim-rails"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "awesome_print"
  gem "dotenv-rails", "~> 2.1", ">= 2.1.1"
  gem "factory_bot_rails"
  gem "ffaker"
  gem "pry"
  gem "rspec-rails", "~> 3.5"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "selenium-webdriver"
end

group :development do
  gem "letter_opener"
  gem "listen", ">= 3.0.5", "< 3.2"
end

group :test do
  gem "capybara", "~> 2.13"
  gem "database_cleaner"
  gem "email_spec"
  gem "shoulda-matchers", "~> 3.1"
  gem "simplecov", require: false
end
