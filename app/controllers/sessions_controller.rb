class SessionsController < ApplicationController

  def facebook_create
    if auth_hash= request.env["omniauth.auth"]
	     inventor= Inventor.find_or_create_by(auth_hash)
       start_inventor_session(inventor)
	  else
      render 'sessions/inventor_create'
    end
  end


  def inventor_new

  end


  def inventor_create
	   inventor= Inventor.find_by(user_name: params[:inventor][:user_name])
	   if inventor && inventor.authenticate(params[:inventor][:password])
		     start_inventor_session(inventor)
	   else
       flash[:notice]= 'ERROR: Account was not created'
	     render 'sessions/inventor_new'
	   end
  end


  def inventor_destroy
    restart_investor_session
  end


  def investor_new

  end


  def investor_create
    investor=Investor.find_by(name: params[:investor][:name])
    if investor && investor.authenticate(params[:investor][:password])
      start_inventor_session(investor)
    else
      flash[:notice]= 'ERROR: Account was not created'
      render 'sessions/investor_new'
    end
  end


  def investor_destroy
    restart_investor_session
  end
end
