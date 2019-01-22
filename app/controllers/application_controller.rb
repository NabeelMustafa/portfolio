class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include VisitFrom
  include CurrenUserConcern
  include SetPageDefaults

  before_action :set_copyright

  def set_copyright
    @copy = NabeelCopyRight::Renderer.copyright 'Nabeel Mustafa', 'All right reserved'
  end

end
