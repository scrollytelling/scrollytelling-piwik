require "scrollytelling/piwik/engine"
require "scrollytelling/piwik/plugin"
require "scrollytelling/piwik/widget_type"

module Scrollytelling
  module Piwik
    def self.widget_type
      WidgetType.new
    end
  end
end
