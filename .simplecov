#!/usr/bin/env ruby

require 'codeclimate-test-reporter'

SimpleCov.start do
  # Exclude `spec/shared` and `spec/support` from Code coverage.
  add_filter 'spec/shared'
  add_filter 'spec/support'

  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter
  ]
end if ENV['COVERAGE']