# frozen_string_literal: true

module Bitaculous
  module Assetify
    module Integrations # :nodoc:
      require_relative 'integrations/sass_integration'

      Bitaculous::Assetify::Integrations::SassIntegration.append_paths [
        Bitaculous::Assetify.stylesheets_path,
        Bitaculous::Assetify.vendor_stylesheets_path
      ]

      require_relative 'integrations/sprockets_integration'

      Bitaculous::Assetify::Integrations::SprocketsIntegration.append_paths [
        Bitaculous::Assetify.fonts_path,
        Bitaculous::Assetify.images_path,
        Bitaculous::Assetify.javascripts_path,
        Bitaculous::Assetify.stylesheets_path,
        Bitaculous::Assetify.vendor_fonts_path,
        Bitaculous::Assetify.vendor_images_path,
        Bitaculous::Assetify.vendor_javascripts_path,
        Bitaculous::Assetify.vendor_stylesheets_path
      ]
    end
  end
end