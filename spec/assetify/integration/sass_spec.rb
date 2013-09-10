require 'spec_helper'

describe Assetify::Integration::Sass do
  let(:load_paths) { Sass.load_paths }

  it 'it expands the load path to include “stylesheets” and “vendor stylesheets”' do
    load_paths.should include Assetify.stylesheets
    load_paths.should include Assetify.vendor_stylesheets
  end
end