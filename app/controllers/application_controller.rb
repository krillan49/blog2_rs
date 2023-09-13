class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :switch_locale

  protected

  # i18n
  def switch_locale(&action)
    locale = locale_from_url || I18n.default_locale
    I18n.with_locale locale, &action
  end

  def locale_from_url
    locale = params[:locale]
    return locale if I18n.available_locales.map(&:to_s).include?(locale)
  end

  def default_url_options
    { locale: I18n.locale }
  end

  # devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
