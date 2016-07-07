# frozen_string_literal: true

module Bitaculous
  module Assetify # :nodoc:
    require_relative 'assetify/vendor'

    require_relative 'assetify/paths'

    extend Paths

    @trail = File.expand_path '../../../', __FILE__

    require_relative 'assetify/integrations'
  end
end