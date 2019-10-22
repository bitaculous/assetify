#!/usr/bin/env gem build
# frozen_string_literal: true

require_relative 'lib/bitaculous/assetify/version'

Gem::Specification.new 'bitaculous-assetify', Bitaculous::Assetify::VERSION do |spec|
  spec.summary          = 'Assets used by Bitaculous, packaged for Sass and Sprockets.'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/assetify/'
  spec.license          = 'MIT'
  spec.files            = Dir['{assets,lib,vendor}/**/*', 'CONTRIBUTING.md', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['CONTRIBUTING.md', 'LICENSE', 'README.md']

  spec.metadata = {
    'homepage_uri'    => 'https://bitaculous.github.io/assetify/',
    'source_code_uri' => 'https://github.com/bitaculous/assetify/',
    'bug_tracker_uri' => 'https://github.com/bitaculous/assetify/issues'
  }

  spec.required_ruby_version     = '>= 2.5'
  spec.required_rubygems_version = '>= 3.0'

  spec.add_runtime_dependency 'sprockets', '>= 2.12.4', '< 4.0'
  spec.add_runtime_dependency 'sass',      '~> 3.7.4'

  spec.add_development_dependency 'rake',  '~> 13.0.0'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
end
