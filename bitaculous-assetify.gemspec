#!/usr/bin/env gem build

require_relative 'lib/bitaculous/assetify/version'

Gem::Specification.new 'bitaculous-assetify', Bitaculous::Assetify::VERSION do |spec|
  spec.summary          = 'Assets used by Bitaculous, packaged for Sass and Sprockets.'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/assetify/'
  spec.license          = 'MIT'
  spec.files            = Dir['{assets,lib,vendor}/**/*', 'CONTRIBUTING.md', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['CONTRIBUTING.md', 'LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.2'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'sprockets', '>= 2.12.4', '< 4.0'
  spec.add_runtime_dependency 'bourbon',   '~> 4.2',    '>= 4.2.6'

  spec.add_development_dependency 'rake',  '~> 10.5', '>= 10.5.0'
  spec.add_development_dependency 'rspec', '~> 3.4',  '>= 3.4.0'
end