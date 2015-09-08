RSpec.describe Bitaculous::Assetify::Paths do
  subject { Bitaculous::Assetify }

  let(:trail)                   { File.expand_path '../../../../../', __FILE__ }
  let(:assets_path)             { File.expand_path 'assets', trail }
  let(:fonts_path)              { File.expand_path 'fonts', assets_path }
  let(:images_path)             { File.expand_path 'images', assets_path }
  let(:javascripts_path)        { File.expand_path 'javascripts', assets_path }
  let(:stylesheets_path)        { File.expand_path 'stylesheets', assets_path }

  let(:vendor_path)             { File.expand_path 'vendor', trail }
  let(:vendor_assets_path)      { File.expand_path 'assets', vendor_path }
  let(:vendor_fonts_path)       { File.expand_path 'fonts', vendor_assets_path }
  let(:vendor_images_path)      { File.expand_path 'images', vendor_assets_path }
  let(:vendor_javascripts_path) { File.expand_path 'javascripts', vendor_assets_path }
  let(:vendor_stylesheets_path) { File.expand_path 'stylesheets', vendor_assets_path }

  it 'returns the assets path' do
    expect(subject.assets_path).to eql assets_path
  end

  it 'returns the fonts path' do
    expect(subject.fonts_path).to eql fonts_path
  end

  it 'returns the images path' do
    expect(subject.images_path).to eql images_path
  end

  it 'returns the javascripts path' do
    expect(subject.javascripts_path).to eql javascripts_path
  end

  it 'returns the stylesheets path' do
    expect(subject.stylesheets_path).to eql stylesheets_path
  end

  it 'returns the vendor path' do
    expect(subject.vendor_path).to eql vendor_path
  end

  it 'returns the vendor assets path' do
    expect(subject.vendor_assets_path).to eql vendor_assets_path
  end

  it 'returns the vendor fonts path' do
    expect(subject.vendor_fonts_path).to eql vendor_fonts_path
  end

  it 'returns the vendor images path' do
    expect(subject.vendor_images_path).to eql vendor_images_path
  end

  it 'returns the vendor javascripts path' do
    expect(subject.vendor_javascripts_path).to eql vendor_javascripts_path
  end

  it 'returns vendor stylesheets path' do
    expect(subject.vendor_stylesheets_path).to eql vendor_stylesheets_path
  end
end