class InventorsController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  private

  def inventor_params
    params.require(:inventor).permit(:user_name, :password_digest, :email, :demo_link)
  end 

end
