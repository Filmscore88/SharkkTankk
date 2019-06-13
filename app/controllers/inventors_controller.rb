class InventorsController < ApplicationController

  def new
    @inventor= Inventor.new
  end


  def create
    @inventor= Inventor.new(inventor_params)
      if @inventor.save
        flash[:success] = 'Account created'
        start_inventor_session(@inventor)
      else
        flash[:notice] ='ERROR: Account was not created'
        render :new
      end
  end


  def show
    @inventor= Inventor.find_by(id: params[:id])
  end


  private

  def inventor_params
    params.require(:inventor).permit(:id, :user_name, :password)
  end
end
