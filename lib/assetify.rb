module Assetify # :nodoc:
  require 'assetify/vendor'

  require 'assetify/paths'

  extend Paths

  @trail = File.expand_path '../../', __FILE__

  require 'assetify/integrations'
end