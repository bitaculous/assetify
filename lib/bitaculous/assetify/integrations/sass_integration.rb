# frozen_string_literal: true

require 'sass'

module Bitaculous
  module Assetify
    module Integrations # :nodoc:
      # The class for the Sass Integration.
      class SassIntegration
        def self.append_paths(paths)
          paths.each { |path| append_path path }
        end

        def self.append_path(path)
          Sass.load_paths.push path if File.directory? path
        end
      end
    end
  end
end
