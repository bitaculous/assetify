#!/usr/bin/env rake
# frozen_string_literal: true

# Load all available Rake tasks in `tasks` folder.
Dir.glob('tasks/*.rake').each { |task| load task }

# === Configuration ===

# Run all specs and RuboCop as default task.
task default: %i[spec rubocop]
