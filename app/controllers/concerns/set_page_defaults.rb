module SetPageDefaults
  extend ActiveSupport::Concern

  included do
    before_action :set_defaults
  end

  def set_defaults
    @title = "Nabeel Mustafa | Portfolio"
    @seo_keywords = "Nabeel Mustafa"
  end
end