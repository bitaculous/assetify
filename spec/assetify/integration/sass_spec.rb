require 'spec_helper'

describe Assetify::Integration::Sass do
  let(:load_paths) { Sass.load_paths }

  it 'it expands the load path to include “stylesheets” and “vendor stylesheets”' do
    expect(load_paths).to include Assetify.stylesheets
    expect(load_paths).to include Assetify.vendor_stylesheets
  end
end