# frozen_string_literal: true

RSpec.describe Bitaculous::Assetify::Integrations::SprocketsIntegration do
  include Helpers

  let(:load_paths) { Sprockets.paths }

  context 'the path exists' do
    let(:paths) { [stylesheets_path, vendor_stylesheets_path] }
    let(:path)  { stylesheets_path }

    it 'expands the load paths' do
      described_class.append_paths paths

      expect(load_paths).to include paths[0]
      expect(load_paths).to include paths[1]
    end

    it 'expands the load path' do
      described_class.append_path path

      expect(load_paths).to include path
    end
  end

  context 'the path does not exists' do
    let(:paths) { ['/tmp/foo', '/tmp/bar'] }
    let(:path)  { '/tmp/foo' }

    it 'does not expand the load path' do
      described_class.append_path path

      expect(load_paths).not_to include path
    end

    it 'does not expand the load paths' do
      described_class.append_paths paths

      expect(load_paths).not_to include paths[0]
      expect(load_paths).not_to include paths[1]
    end
  end
end