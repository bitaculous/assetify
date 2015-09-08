require 'sass'

module Bitaculous
  module Assetify
    module Integrations # :nodoc:
      # = SassIntegration
      #
      # The class for the Sass integration.
      class SassIntegration
        def self.setup(stylesheets_path:        Bitaculous::Assetify.stylesheets_path,
                       vendor_stylesheets_path: Bitaculous::Assetify.vendor_stylesheets_path)
          load_paths = Sass.load_paths

          load_paths.push stylesheets_path        if File.directory? stylesheets_path
          load_paths.push vendor_stylesheets_path if File.directory? vendor_stylesheets_path
        end
      end
    end
  end
end