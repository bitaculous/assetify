#!/usr/bin/env rake
# frozen_string_literal: true

namespace :build do
  desc 'Builds Modernizr'
  task :modernizr, :minify do |_task, args|
    minify = args.minify || false

    Rake::Task['build:modernizr:execute'].invoke minify
  end

  namespace :modernizr do
    task :execute, :minify do |_task, args|
      minify = args.minify

      path        = File.expand_path 'vendor/assets/javascripts/modernizr', root
      ext         = minify ? 'min.js' : 'js'
      destination = File.expand_path "modernizr-#{version}.#{label}.#{ext}", path
      options     = '-u' if minify

      `modernizr -c #{config} -d #{destination} #{options}`
    end

    private

    def config
      foo = File.expand_path 'resources/build/modernizr/config.json', root

      puts foo

      foo
    end

    def label
      'custom'
    end

    def version
      `modernizr -v`.chomp.gsub! 'Modernizr v', ''
    end
  end

  private

  def root
    File.expand_path '..', __dir__
  end
end