class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @_current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end
  helper_method :current_user
end
