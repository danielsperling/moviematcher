class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def favorite_text
    @favorite_exists ? 'unfavorite' : 'favorite'
  end

  helper_method :favorite_text

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username bio])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username bio])
  end
end
