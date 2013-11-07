require 'spec_helper'

describe Assetify::Integration::Sass do
  let(:load_paths) { Sass.load_paths }

  it 'expands the load path' do
    expect(load_paths).to include Assetify.stylesheets
    expect(load_paths).to include Assetify.vendor_stylesheets
  end
end