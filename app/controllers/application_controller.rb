class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :inventor_autheticaion_required, :investor_autheticaion_required, :investor_logged_in?, :inventor_logged_in?, :current_user, :inventor_only, :investor_only

  def  inventor_autheticaion_required
    if !inventor_logged_in?
      redirect_to login_path
    end
  end

  def start_inventor_session(inventor)
    session[:inventor_id]= inventor.id
    session[:identity]="Inventor"
    redirect_to inventor_path(inventor)
  end

  def restart_inventor_session
    session.delete :inventor_id
    session.delete :identity
    redirect_to root_url
  end

  def inventor_logged_in?
    session[:identity]== "Inventor"
  end

  def inventor_only
    unless inventor_logged_in?
      flash[:notice] = "You must be an Inventor to perform that function!"
      redirect_to inventions_path
    end
  end


  def current_user
    key = session[:identity].downcase + '_id'
    @current_user || @current_user = session[:identity].constantize.find(session[key])
  end


  def investor_autheticaion_required
    if !investor_logged_in?
      redirect_to investor_login_path
    end
  end

  def start_investor_session(investor)
    session[:investor_id]= investor.id
    session[:identity]="Investor"
    redirect_to investor_path(investor)
  end

  def restart_investor_session
    session.delete :investor_id
    session.delete :identity
    redirect_to root_url
  end


  def investor_logged_in?
    session[:identity]== "Investor"
  end


  def investor_only
    unless investor_logged_in?
      flash[:notice] = "You must be an Investor to perform that function!"
      redirect_to  invention_investments_path
    end
  end
end
