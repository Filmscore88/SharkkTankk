class SessionsController < ApplicationController

  def new

  end

  def create
    @inventor = Inventor.find_or_create_by(uid: auth['uid']) do |u|
      u.user_name = auth['info']['name']
      u.email = auth['info']['email']
    end

    session[:user_id] = @inventor.id

    redirect_to root_url
  end

  def destroy
    #if current_user
      session.delete :user_id
      redirect_to root_url
    #end
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
