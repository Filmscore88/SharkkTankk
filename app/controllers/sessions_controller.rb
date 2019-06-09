class SessionsController < ApplicationController

  def investor_new

  end

  def new

  end

  def investor_create

    investor=Investor.find_by(name: params[:name])
    if investor && investor.authenticate(params[:password])

       session[:investor_id]= inventor.id
       redirect_to root_path
    else
       render 'sessions/investor_new'
    end
  end





  def create


   if auth_hash= request.env["omniauth.auth"]
	    inventor= Inventor.find_or_create_by(auth_hash)
      session[:inventor_id]= inventor.id
	    redirect_to inventor_path(inventor)
	 else

	   inventor= Inventor.find_by(user_name: params[:inventor][:user_name])

	   if inventor #&& inventor.authenticate(params[:inventor][:password])


		    session[:inventor_id]= inventor.id


		    redirect_to root_path
	   else
	      render 'sessions/new'
	   end
  end

end




  def destroy
      session.delete :inventor_id
      redirect_to root_url
  end

  def investor_destroy
    session.delete :investor_id
      redirect_to root_url
  end


end
