class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :inventor_autheticaion_required, :investor_autheticaion_required, :investor_logged_in?, :inventor_logged_in?, :current_inventor, :current_investor, :inventor_only, :investor_only


  def  inventor_autheticaion_required
    if !inventor_logged_in?
      redirect_to login_path
    end
  end

  def investor_autheticaion_required
    if !investor_logged_in?
      redirect_to investor_login_path
    end
  end


  def inventor_logged_in?
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

  def investor_only
    unless investor_logged_in? && !inventor_logged_in?
      flash[:notice] = "You must be an Investor to perform that function!"
      redirect_to inventor_path(current_inventor)
    end
  end

  def inventor_only
    unless !investor_logged_in? && inventor_logged_in?
      flash[:notice] = "You must be an Inventor to perform that function!"
      redirect_to investor_path(current_investor)
    end
  end
end
