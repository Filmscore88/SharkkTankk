class InventorsController < ApplicationController

  def home
    render :welcome


  end

  def new
    @inventor= Inventor.new
  end

  def create
    @inventor= Inventor.create(inventor_params)

    if @inventor
      redirect_to inventor_path(@inventor)
    else
      render :new
    end
  end

  def show

    @inventor= Inventor.find_by(id: params[:id])

  end

  private

  def inventor_params
    params.require(:inventor).permit(:id, :user_name, :password, :email, :demo_link)
  end
end
