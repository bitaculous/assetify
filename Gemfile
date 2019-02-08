#!/usr/bin/env bundle
# frozen_string_literal: true

source 'https://rubygems.org'

# Declare the dependencies in `bitaculous-assetify.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

# === Development ===

group :development do
  gem 'guard-rspec', '~> 4.7.3', require: false
end

# === Test ===

group :test do
  # --- Code Style ---

  gem 'rubocop',       '~> 0.63.1', require: false
  gem 'rubocop-rspec', '~> 1.32', require: false

  # --- Code Coverage ---

  gem 'simplecov', '~> 0.16.1', require: false
end

# === Misc ===

group :misc do
  # --- Formatter ---

  gem 'nyan-cat-formatter', '~> 0.12', require: false
end
