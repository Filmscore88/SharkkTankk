class SessionsController < ApplicationController

  def facebook_create
    if auth_hash= request.env["omniauth.auth"]
	     user= User.find_or_create_by(auth_hash)
       user.update(inventor: true)
       start_session(user)

	  else
      render 'sessions/user_new'
    end
  end


  def user_new

  end

  def user_destroy
    logout
  end

  def user_create
	   user= User.find_by(name: params[:user][:name])
	   if user && user.authenticate(params[:user][:password])
		     start_session(user)
	   else
       flash[:notice]= 'ERROR: Account was not created'
	     render 'sessions/user_new'
	   end
  end
end
