require 'pageflow/plugin'

module Scrollytelling
  module Piwik
    class Plugin < ::Pageflow::Plugin
      def initialize(url:, site_id:)
        @url = url
        @site_id = site_id
      end

      def configure(config)
        config.widget_types.register(Scrollytelling::Piwik.widget_type(url: @url, site_id: @site_id), default: true)
      end
    end
  end
end
