source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.13'

# This will change if we use a different database.
# We'll just use sqlite for now

gem 'jquery-rails'

gem 'bcrypt-ruby'

gem 'will_paginate', '~> 3.0'

gem "nokogiri", "~> 1.6.0"

gem 'twitter'
gem 'figaro'
gem 'sanitize'
gem 'rails_autolink'

gem 'newrelic_rpm'

# Image Uploading and Storage
gem 'paperclip'
gem 'aws-sdk'
gem 'exifr'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails' # if running rails 3.1 or greater
  gem 'compass-rails'
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

group :production do
  gem 'pg'
end