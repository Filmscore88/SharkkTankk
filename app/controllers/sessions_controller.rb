class SessionsController < ApplicationController

  def new

  end


  def create

   if auth_hash= request.env["omniauth.auth"]
	    inventor= Inventor.find_or_create_by(auth_hash)
	    redirect_to root_path
	 else
	   inventor=Inventor.find_by(email: params[:email])
	   if inventor && inventor.authenticate(params[:password])

		    session[:user_id]= inventor.id
		    redirect_to root_path
	   else
	      render 'sessions/new'
	   end
  end
end




  def destroy
    #if current_user
      session.delete :inventor_id
      redirect_to root_url
    #end
  end



end
