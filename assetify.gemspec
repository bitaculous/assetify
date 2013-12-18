#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'assetify/version'

Gem::Specification.new do |spec|
  spec.name          = 'assetify'
  spec.summary       = '“All your assets are belong to us.”'
  spec.authors       = 'Maik Kempe'
  spec.email         = 'mkempe@bitaculous.com'
  spec.homepage      = 'https://github.com/bitaculous/assetify'
  spec.version       = Assetify::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.date          = '2013-12-19'
  spec.licenses      = 'MIT'

  spec.require_paths = ['lib']

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map { |file| File.basename file }
  spec.test_files    = spec.files.grep(%r{^(features|spec|test)/})

  spec.add_dependency 'sass', '>= 3.2.12'

  spec.add_dependency 'sprockets', '~> 2.10.1'

  spec.add_development_dependency 'bundler', '~> 1.3.5'

  spec.add_development_dependency 'rake', '~> 10.1.0'

  spec.add_development_dependency 'rspec', '~> 2.14.1'

  spec.required_rubygems_version = Gem::Requirement.new '>= 2.0.0'
end