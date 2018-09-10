source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'actionpack', '~> 5.2'
gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'devise', '~> 4.2'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'active_link_to', '~> 1.0', '>= 1.0.5'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'awesome_print', '~> 1.8'
gem 'carrierwave', '~> 0.11.2'
gem 'activerecord', '~> 5.0', '>= 5.0.0.1'
gem 'roo', '~> 2.7', '>= 2.7.1'
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'addressable', '~> 2.5', '>= 2.5.2'
gem 'jquery-rails'
gem 'meta-tags'
gem 'sitemap_generator', '~> 6.0', '>= 6.0.1'
gem 'whenever', '~> 0.9.4'
gem 'simple_form'
gem 'validates_zipcode', '~> 0.1.0'
gem 'httparty', '~> 0.13.7'


group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'meta_request', '~> 0.6.0'
  gem 'pry-rails', '~> 0.3.6'
  gem 'web-console', '~> 3.3', '>= 3.3.1'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-matchers'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
