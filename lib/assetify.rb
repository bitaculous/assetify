require 'sass'

module Assetify
  assets = File.expand_path '../../assets', __FILE__
  vendor_assets = File.expand_path '../../vendor/assets', __FILE__

  stylesheets = File.expand_path 'stylesheets', assets
  vendor_stylesheets = File.expand_path 'stylesheets', vendor_assets

  Sass.load_paths << stylesheets
  Sass.load_paths << vendor_stylesheets
end