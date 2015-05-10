#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'assetify/version'

Gem::Specification.new 'assetify', Assetify::VERSION do |spec|
  spec.summary          = '“All your assets are belong to us”'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/assetify/'
  spec.license          = 'MIT'
  spec.files            = Dir['{assets,lib,vendor}/**/*', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.1'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'sprockets',     '>= 2.12.3'
  spec.add_runtime_dependency 'bourbon',       '~> 4.2.3'
  spec.add_runtime_dependency 'breakpoint',    '~> 2.5.0'
  spec.add_runtime_dependency 'modular-scale', '~> 2.0.6'
  spec.add_runtime_dependency 'sassy-maps',    '~> 0.4.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake',    '~> 10.4.2'
  spec.add_development_dependency 'rspec',   '~> 3.2.0'
end