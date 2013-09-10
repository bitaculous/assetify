require 'spec_helper'

describe Assetify::Paths do
  let(:root)          { File.expand_path '../../../', __FILE__}
  let(:assets)        { File.expand_path 'assets', root }
  let(:vendor_assets) { File.expand_path 'vendor/assets', root }

  it 'it returns “assets” path' do
    expect(Assetify.assets).to eql assets
  end

  it 'it returns “vendor assets” path' do
    expect(Assetify.vendor_assets).to eql vendor_assets
  end
end