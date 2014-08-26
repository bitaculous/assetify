describe Assetify::Integrations::SprocketsIntegration do
  include Helpers

  let(:load_paths) { Sprockets.paths }

  describe 'fonts' do
    context 'the fonts path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup fonts_path: fonts_path

        expect(load_paths).to include fonts_path
      end
    end

    context 'the fonts path does not exists' do
      let(:fonts_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup fonts_path: fonts_path

        expect(load_paths).not_to include fonts_path
      end
    end
  end

  describe 'images' do
    context 'the images path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup images_path: images_path

        expect(load_paths).to include images_path
      end
    end

    context 'the images path does not exists' do
      let(:images_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup images_path: images_path

        expect(load_paths).not_to include images_path
      end
    end
  end

  describe 'javascripts' do
    context 'the javascripts path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup javascripts_path: javascripts_path

        expect(load_paths).to include javascripts_path
      end
    end

    context 'the javascripts path does not exists' do
      let(:javascripts_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup javascripts_path: javascripts_path

        expect(load_paths).not_to include javascripts_path
      end
    end
  end

  describe 'stylesheets' do
    context 'the stylesheets path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup stylesheets_path: stylesheets_path

        expect(load_paths).to include stylesheets_path
      end
    end

    context 'the stylesheets path does not exists' do
      let(:stylesheets_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup stylesheets_path: stylesheets_path

        expect(load_paths).not_to include stylesheets_path
      end
    end
  end

  describe 'vendor fonts' do
    context 'the vendor fonts path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_fonts_path: vendor_fonts_path

        expect(load_paths).to include vendor_fonts_path
      end
    end

    context 'the vendor fonts path does not exists' do
      let(:vendor_fonts_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_fonts_path: vendor_fonts_path

        expect(load_paths).not_to include vendor_fonts_path
      end
    end
  end

  describe 'vendor images' do
    context 'the vendor images path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_images_path: vendor_images_path

        expect(load_paths).to include vendor_images_path
      end
    end

    context 'the vendor images path does not exists' do
      let(:vendor_images_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_images_path: vendor_images_path

        expect(load_paths).not_to include vendor_images_path
      end
    end
  end

  describe 'vendor javascripts' do
    context 'the vendor javascripts path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_javascripts_path: vendor_javascripts_path

        expect(load_paths).to include vendor_javascripts_path
      end
    end

    context 'the vendor javascripts path does not exists' do
      let(:vendor_javascripts_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_javascripts_path: vendor_javascripts_path

        expect(load_paths).not_to include vendor_javascripts_path
      end
    end
  end

  describe 'vendor stylesheets' do
    context 'the vendor stylesheets path exists' do
      it 'expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_stylesheets_path: vendor_stylesheets_path

        expect(load_paths).to include vendor_stylesheets_path
      end
    end

    context 'the vendor stylesheets path does not exists' do
      let(:vendor_stylesheets_path) { '/foo' }

      it 'does not expands the load path' do
        Assetify::Integrations::SprocketsIntegration.setup vendor_stylesheets_path: vendor_stylesheets_path

        expect(load_paths).not_to include vendor_stylesheets_path
      end
    end
  end
end