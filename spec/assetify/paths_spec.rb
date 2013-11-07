require 'spec_helper'

describe Assetify::Paths do
  let(:root)               { File.expand_path '../../../', __FILE__}
  let(:assets)             { File.expand_path 'assets', root }
  let(:fonts)              { File.expand_path 'fonts', assets }
  let(:images)             { File.expand_path 'images', assets }
  let(:javascripts)        { File.expand_path 'javascripts', assets }
  let(:stylesheets)        { File.expand_path 'stylesheets', assets }
  let(:vendor_assets)      { File.expand_path 'vendor/assets', root }
  let(:vendor_fonts)       { File.expand_path 'fonts', vendor_assets }
  let(:vendor_images)      { File.expand_path 'images', vendor_assets }
  let(:vendor_javascripts) { File.expand_path 'javascripts', vendor_assets }
  let(:vendor_stylesheets) { File.expand_path 'stylesheets', vendor_assets }

  it 'returns “assets” path' do
    expect(Assetify.assets).to eql assets
  end

  it 'returns “fonts” path' do
    expect(Assetify.fonts).to eql fonts
  end

  it 'returns “images” path' do
    expect(Assetify.images).to eql images
  end

  it 'returns “javascripts” path' do
    expect(Assetify.javascripts).to eql javascripts
  end

  it 'returns “stylesheets” path' do
    expect(Assetify.stylesheets).to eql stylesheets
  end

  it 'returns “vendor assets” path' do
    expect(Assetify.vendor_assets).to eql vendor_assets
  end

  it 'returns “vendor fonts” path' do
    expect(Assetify.vendor_fonts).to eql vendor_fonts
  end

  it 'returns “vendor images” path' do
    expect(Assetify.vendor_images).to eql vendor_images
  end

  it 'returns “vendor javascripts” path' do
    expect(Assetify.vendor_javascripts).to eql vendor_javascripts
  end

  it 'returns “vendor stylesheets” path' do
    expect(Assetify.vendor_stylesheets).to eql vendor_stylesheets
  end
end