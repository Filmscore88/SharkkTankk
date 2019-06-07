class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def autheticaion_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user||= Inventor.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
