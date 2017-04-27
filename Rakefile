#!/usr/bin/env rake
# frozen_string_literal: true

# Load all Rake tasks in `tasks`.
Dir.glob('tasks/*.rake').each { |task| load task }

# === Configuration ===

# Run all specs and RuboCop as default task.
task default: %i[spec rubocop]