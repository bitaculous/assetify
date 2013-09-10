require 'assetify/version'

module Assetify
  require 'assetify/paths'

  extend Paths

  @root = File.expand_path '../../', __FILE__

  require 'assetify/integration/sass'
  require 'assetify/integration/sprockets'
end