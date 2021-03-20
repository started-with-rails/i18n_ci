# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    parsed_locale = params[:locale]
    I18n.locale = I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
