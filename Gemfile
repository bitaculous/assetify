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
  gem 'rubocop',       '~> 0.74.0', require: false
  gem 'rubocop-rspec', '~> 1.35.0', require: false

  gem 'simplecov', '~> 0.17.0', require: false
end

# === Misc ===

group :misc do
  gem 'nyan-cat-formatter', '~> 0.12.0', require: false
end
