class ApplicationController < ActionController::Base
  around_action :switch_locale
  private

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :email,
    :username, :gender])

    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :username, 
    :password])
  end

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
end
