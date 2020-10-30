#!/usr/bin/env ruby
# frozen_string_literal: true

if ENV['COVERAGE']
  SimpleCov.start do
    # Exclude `spec/shared` and `spec/support` from Code Coverage.
    add_filter 'spec/shared'
    add_filter 'spec/support'

    formatter SimpleCov::Formatter::MultiFormatter[
      SimpleCov::Formatter::HTMLFormatter
    ]
  end
end
