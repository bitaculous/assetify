module Assetify
  module Integrations
    require 'assetify/integrations/sass_integration'
    SassIntegration.setup

    require 'assetify/integrations/sprockets_integration'
    SprocketsIntegration.setup
  end
end