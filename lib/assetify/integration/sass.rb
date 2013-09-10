require 'sass'

module Assetify
  module Integration
    module Sass
      load_paths = ::Sass.load_paths

      load_paths.push Assetify.stylesheets, Assetify.vendor_stylesheets
    end
  end
end