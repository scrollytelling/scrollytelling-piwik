require "scrollytelling/piwik/engine"
require "scrollytelling/piwik/plugin"
require "scrollytelling/piwik/widget_type"

module Scrollytelling
  module Piwik
    def self.widget_type(url:, site_id:)
      WidgetType.new(url: url, site_id: site_id)
    end
  end
end
