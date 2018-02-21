class ApplicationController < ActionController::Base
  before_action :locale
  protect_from_forgery with: :exception

  def locale(locale = I18n.default_locale)
    I18n.locale = params[:locale] || locale
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end

  def after_sign_in_path_for(resource)
    if current_user.admin == true
      rails_admin.dashboard_path
    else
      root_path
    end
  end
    
end
