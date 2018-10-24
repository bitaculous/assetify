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

  spec.required_ruby_version     = '~> 2.4'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'sprockets', '>= 2.12.4', '< 4.0'
  spec.add_runtime_dependency 'sass',      '~> 3.5',    '>= 3.5.7'

  spec.add_development_dependency 'rake',  '~> 12.0', '>= 12.3.1'
  spec.add_development_dependency 'rspec', '~> 3.8',  '>= 3.8.0'
end