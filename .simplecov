#!/usr/bin/env ruby

SimpleCov.start do
  # Exclude `spec/shared` and `spec/support` from Code Coverage.
  add_filter 'spec/shared'
  add_filter 'spec/support'

  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter
  ]
end if ENV['COVERAGE']