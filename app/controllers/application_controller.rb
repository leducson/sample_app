class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  def hello
    render html: "hello, world!"
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
