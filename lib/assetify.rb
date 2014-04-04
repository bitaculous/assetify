module Assetify
  require_relative 'assetify/paths'

  extend Paths

  @trail = File.expand_path '../../', __FILE__

  require_relative 'assetify/integrations'
end