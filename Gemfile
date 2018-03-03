source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.5"

# core
gem "decent_exposure"
gem "foreman"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.7"

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
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", "~> 2.13"
  gem "database_cleaner"
  gem "email_spec"
  gem "shoulda-matchers", "~> 3.1"
  gem "simplecov", require: false
end
