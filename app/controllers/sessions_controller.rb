class SessionsController < ApplicationController


  def inventor_new

  end


  def inventor_create


   if auth_hash= request.env["omniauth.auth"]
	    inventor= Inventor.find_or_create_by(auth_hash)
      session[:inventor_id]= inventor.id
      session[:identity]="Inventor"
	    redirect_to inventor_path(inventor)
	 else

	   inventor= Inventor.find_by(user_name: params[:inventor][:user_name])

	   if inventor && inventor.authenticate(params[:inventor][:password])


		    session[:inventor_id]= inventor.id
        session[:identity]="Inventor"


		    redirect_to inventor_path(inventor)
	   else
	      render 'sessions/inventor_new'
	   end
  end

end


def inventor_destroy
    session.delete :inventor_id
    session.delete :identity
    redirect_to root_url
end



def investor_new

end


  def investor_create

    investor=Investor.find_by(name: params[:investor][:name])
    if investor && investor.authenticate(params[:investor][:password])
       session[:investor_id]= investor.id
       session[:identity]="Investor"
       redirect_to investor_path(investor)

    else
       render 'sessions/investor_new'
    end
  end



  def investor_destroy
    session.delete :investor_id
    session.delete :identity
      redirect_to root_url
  end


end
