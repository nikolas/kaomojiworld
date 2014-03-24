class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale
  before_filter :configure_devise_parameters, if: :devise_controller?

  def set_locale
    I18n.locale = params[:locale] || extract_locale_from_accept_language_header || I18n.default_locale
  end

  private
  def extract_locale_from_accept_language_header
    if request.env['HTTP_ACCEPT_LANGUAGE']
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
  end

  protected
  def configure_devise_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation,
                                                           :username) }
  end
end
