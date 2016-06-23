require 'pageflow/widget_type'

module Scrollytelling
  module Piwik
    class WidgetType < ::Pageflow::WidgetType
      def initialize(url:, site_id:)
        @url = url
        @site_id = site_id
      end

      def name
        'scrollytelling_piwik'
      end

      def roles
        ['piwik']
      end

      def render(template, entry)
        template.render('scrollytelling/piwik/widget.html.erb', entry: entry, url: @url, site_id: @site_id)
      end
    end
  end
end
