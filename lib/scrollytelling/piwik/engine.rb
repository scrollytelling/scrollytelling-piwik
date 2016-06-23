require 'rails/engine'

module Scrollytelling
  module Piwik
    class Engine < ::Rails::Engine
      isolate_namespace Scrollytelling::Piwik
    end
  end
end
