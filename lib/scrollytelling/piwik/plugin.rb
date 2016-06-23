require 'pageflow/plugin'

module Scrollytelling
  module Piwik
    class Plugin < ::Pageflow::Plugin
      def configure(config)
        config.widget_types.register(Scrollytelling::Piwik.widget_type, default: true)
      end
    end
  end
end
