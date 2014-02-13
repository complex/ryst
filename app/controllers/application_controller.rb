class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :in_game?

  def current_location
    request.env['HTTP_EVE_SOLARSYSTEMNAME']
  end

  def in_game?
    current_location.present?
  end

end
