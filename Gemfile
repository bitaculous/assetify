#!/usr/bin/env bundle
# frozen_string_literal: true

source 'https://rubygems.org'

# Declare the gem's dependencies in `bitaculous-assetify.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

# === Development ===

group :development do
  gem 'guard-rspec', '~> 4.7.3', require: false
end

# === Test ===

group :test do
  # --- Code Analysis ---

  gem 'rubocop',       '~> 0.50.0', require: false
  gem 'rubocop-rspec', '~> 1.17.1', require: false

  # --- Code Coverage ---

  gem 'simplecov', '~> 0.13.0', require: false

  gem 'codeclimate-test-reporter', '~> 1.0.8', require: false
end

# === Misc ===

group :misc do
  # --- Formatter ---

  gem 'nyan-cat-formatter', '~> 0.12', require: false

  # --- macOS ---

  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.10.2', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end