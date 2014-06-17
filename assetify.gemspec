#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'assetify/version'

Gem::Specification.new do |spec|
  spec.name          = 'assetify'
  spec.summary       = '“All your assets are belong to us” (“AYAABTU”)'
  spec.author        = 'Maik Kempe'
  spec.email         = 'mkempe@bitaculous.com'
  spec.homepage      = 'http://bitaculous.github.io/assetify'
  spec.version       = Assetify::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.licenses      = 'MIT'

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(/^bin/).map { |file| File.basename file }
  spec.test_files    = spec.files.grep(/^(features|spec|test)/)

  spec.required_ruby_version = '>= 2.0.0'

  spec.required_rubygems_version = Gem::Requirement.new '>= 2.0.0'

  spec.add_dependency 'sass', '>= 3.2'

  spec.add_dependency 'sprockets', '~> 2.12.1'

  spec.add_development_dependency 'bundler', '~> 1.6.3'

  spec.add_development_dependency 'rake', '~> 10.3.2'

  spec.add_development_dependency 'rspec', '~> 3.0.0'
end