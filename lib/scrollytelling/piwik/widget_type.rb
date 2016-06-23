require 'pageflow/widget_type'

module Scrollytelling
  module Piwik
    class WidgetType < ::Pageflow::WidgetType
      def name
        'scrollytelling_piwik'
      end

      def roles
        ['piwik']
      end

      def render(template, entry)
        template.render('scrollytelling/piwik/widget.html.erb', entry: entry)
      end
    end
  end
end
