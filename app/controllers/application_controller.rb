class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :start_session, :autheticaion_required, :logged_in?, :current_user, :inventor_only, :investor_only

  def  autheticaion_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def inventor_only
    unless current_user.inventor
      flash[:notice] = "You must be an Inventor to perform that function!"
      redirect_to inventions_path
    end
  end

  def investor_only
    unless current_user.investor
      flash[:notice] = "You must be an Investor to perform that function!"
      redirect_to  invention_investments_path
    end
  end


  def current_user
    @current_user ||= User.find_by(:id => session[:user_id]) if session[:user_id]
  end


  def start_session(user)
    session[:user_id]= user.id
    redirect_to user_path(user)
  end

  def logout
    session.delete :user_id

    redirect_to root_path
  end
end
