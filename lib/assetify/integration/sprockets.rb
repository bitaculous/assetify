require 'sprockets'

module Assetify
  module Integration
    module Sprockets
      ::Sprockets.append_path Assetify.fonts
      ::Sprockets.append_path Assetify.images
      ::Sprockets.append_path Assetify.javascripts
      ::Sprockets.append_path Assetify.stylesheets

      ::Sprockets.append_path Assetify.vendor_fonts
      ::Sprockets.append_path Assetify.vendor_images
      ::Sprockets.append_path Assetify.vendor_javascripts
      ::Sprockets.append_path Assetify.vendor_stylesheets
    end
  end
end