require 'spec_helper'

describe Assetify::Integration::Sprockets do
  let(:load_paths) { Sprockets.paths }

  it 'expands the load path' do
    expect(load_paths).to include Assetify.fonts
    expect(load_paths).to include Assetify.images
    expect(load_paths).to include Assetify.javascripts
    expect(load_paths).to include Assetify.stylesheets

    expect(load_paths).to include Assetify.vendor_fonts
    expect(load_paths).to include Assetify.vendor_images
    expect(load_paths).to include Assetify.vendor_javascripts
    expect(load_paths).to include Assetify.vendor_stylesheets
  end
end