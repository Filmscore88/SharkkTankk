class SessionsController < ApplicationController

  def new

  end

  def investor_new
  end



  def create

   if auth_hash= request.env["omniauth.auth"]
	    inventor= Inventor.find_or_create_by(auth_hash)
      session[:inventor_id]= inventor.id
	    redirect_to inventor_path(inventor)
	 else
	   inventor=Inventor.find_by(user_name: params[:user_name])
	   if inventor && inventor.authenticate(params[:password])

		    session[:inventor_id]= inventor.id
		    redirect_to root_path
	   else
	      render 'sessions/new'
	   end
  end

  def investor_create

  end
end




  def destroy
    #if current_user
      session.delete :inventor_id
      redirect_to root_url
    #end
  end

  def investor_destroy

  end


end
