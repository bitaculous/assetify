module Assetify
  module Paths
    def root
      @root
    end

    def assets
      File.expand_path 'assets', root
    end

    def fonts
      File.expand_path 'fonts', assets
    end

    def images
      File.expand_path 'images', assets
    end

    def javascripts
      File.expand_path 'javascripts', assets
    end

    def stylesheets
      File.expand_path 'stylesheets', assets
    end

    def vendor_assets
      File.expand_path 'vendor/assets', root
    end

    def vendor_fonts
      File.expand_path 'fonts', vendor_assets
    end

    def vendor_images
      File.expand_path 'images', vendor_assets
    end

    def vendor_javascripts
      File.expand_path 'javascripts', vendor_assets
    end

    def vendor_stylesheets
      File.expand_path 'stylesheets', vendor_assets
    end

    protected
      attr_reader :root
  end
end