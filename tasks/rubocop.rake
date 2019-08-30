#!/usr/bin/env rake
# frozen_string_literal: true

require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |task|
  # Sets additional options.
  # task.options = ['-d']

  # Don't abort Rake on failure.
  task.fail_on_error = false
end
