require 'spec_helper'

describe Assetify do
  describe '“Sass integration”' do
    let(:root)               { File.expand_path '../../../', __FILE__}
    let(:assets)             { File.expand_path 'assets', root }
    let(:vendor_assets)      { File.expand_path 'vendor/assets', root }
    let(:stylesheets)        { File.expand_path 'stylesheets', assets }
    let(:vendor_stylesheets) { File.expand_path 'stylesheets', vendor_assets }
    let(:load_paths)         { Sass.load_paths }

    it 'it expands the load path' do
      load_paths.should include stylesheets
      load_paths.should include vendor_stylesheets
    end
  end
end