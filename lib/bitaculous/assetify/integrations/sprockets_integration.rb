require 'sprockets'

module Bitaculous
  module Assetify
    module Integrations # :nodoc:
      # The class for the Sprockets Integration.
      class SprocketsIntegration
        def self.append_paths(paths)
          paths.each { |path| append_path path }
        end

        def self.append_path(path)
          Sprockets.append_path path if File.directory? path
        end
      end
    end
  end
end