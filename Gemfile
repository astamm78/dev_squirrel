source 'https://rubygems.org'

gem 'rails', '3.2.13'

# This will change if we use a different database.
# We'll just use sqlite for now

gem 'jquery-rails'

gem 'bcrypt-ruby'

gem 'will_paginate', '~> 3.0'

gem "nokogiri", "~> 1.6.0"
# gem 'open-uri'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'faker'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'pg'
end