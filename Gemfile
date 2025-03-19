source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.2", ">= 7.2.2.1"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

gem 'ancestry', '~> 4.3', '>= 4.3.3'
gem 'devise', '~> 4.9', '>= 4.9.4'
gem 'faker', '~> 3.3', '>= 3.3.1'
gem 'minitest-power_assert', '~> 0.3.1'
gem 'pagy', '~> 8.4'
gem 'rubocop-performance', '~> 1.21'
gem 'rubocop-rails', '~> 2.24', '>= 2.24.1'
gem 'sentry-rails', '~> 5.17', '>= 5.17.3'
gem 'sentry-ruby', '~> 5.17', '>= 5.17.3'
gem 'simple_form', '~> 5.3'
gem 'slim', '~> 5.2', '>= 5.2.1'
gem 'slim_lint', '~> 0.32.2'
gem 'slim-rails', '~> 3.6', '>= 3.6.3'
gem 'stackprof', '~> 0.2.26'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  # gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem "sqlite3", ">= 1.4"
end

group :production do
  gem 'pg'
end