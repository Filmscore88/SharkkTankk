class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def  autheticaion_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def investor_autheticaion_required
    if !investor_logged_in?
      redirect_to investor_login_path
    end
  end


  def logged_in?
    !!current_inventor
  end

  def investor_logged_in?
    !!current_investor
  end

  def current_inventor
    @current_inventor||= Inventor.find(session[:inventor_id]) if session[:inventor_id]
  end

  def current_investor
    @current_investor||= Investor.find(session[:investor_id]) if session[:investor_id]
  end


  helper_method :current_user

end
