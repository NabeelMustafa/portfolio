class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include VisitFrom
  include CurrenUserConcern
  include SetPageDefaults

  before_action :set_copyright
  before_action :store_user_location!, if: :storable_location?
  # before_action :authenticate_user!
  def set_copyright
    @copy = NabeelCopyRight::Renderer.copyright 'Nabeel Mustafa', 'All right reserved'
  end




  private
  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer || super
  end

  def after_update_path_for(resource_or_scope)
    current_user_path || super
  end
end
