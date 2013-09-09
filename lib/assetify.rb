require 'sass'
require 'sprockets'

module Assetify
  assets      = File.expand_path '../../assets', __FILE__
  fonts       = File.expand_path 'fonts', assets
  images      = File.expand_path 'images', assets
  javascripts = File.expand_path 'javascripts', assets
  stylesheets = File.expand_path 'stylesheets', assets

  vendor_assets      = File.expand_path '../../vendor/assets', __FILE__
  vendor_fonts       = File.expand_path 'fonts', vendor_assets
  vendor_images      = File.expand_path 'images', vendor_assets
  vendor_javascripts = File.expand_path 'javascripts', vendor_assets
  vendor_stylesheets = File.expand_path 'stylesheets', vendor_assets

  load_paths = Sass.load_paths

  load_paths.push stylesheets, vendor_stylesheets

  Sprockets.append_path fonts
  Sprockets.append_path images
  Sprockets.append_path javascripts
  Sprockets.append_path stylesheets

  Sprockets.append_path vendor_fonts
  Sprockets.append_path vendor_images
  Sprockets.append_path vendor_javascripts
  Sprockets.append_path vendor_stylesheets
end