module Assetify
  require 'assetify/paths'

  extend Paths

  @root = File.expand_path '../../', __FILE__

  require 'assetify/integrations/sass'
  require 'assetify/integrations/sprockets'
end