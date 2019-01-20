module VisitFrom
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
    if params[:q]
      session[:source] = params[:q]
    else
      session[:source] = nil
    end
  end
end