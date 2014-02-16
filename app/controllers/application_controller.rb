class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_system, :in_game?

  def current_system
    request.env['HTTP_EVE_SOLARSYSTEMNAME']
  end

  def in_game?
    current_system.present?
  end

end
