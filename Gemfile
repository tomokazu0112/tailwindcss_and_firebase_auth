# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) {|repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "bootsnap", ">= 1.4.4", require: false
gem "jbuilder", "~> 2.7"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3", ">= 6.1.3.2"
gem "sass-rails", ">= 6"
gem "tailwindcss-rails", "~> 0.3.3"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry", "~> 0.13.1"
  gem "pry-byebug"

  gem "factory_bot"
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"

  # code style checker
  gem "rubocop", require: false
  gem "rubocop-i18n", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

group :development do
  gem "annotate"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"

  # vulnerability scanner
  gem "brakeman", require: false
  gem "bundle-audit", require: false
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end
