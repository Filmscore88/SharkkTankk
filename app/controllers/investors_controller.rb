class InvestorsController < ApplicationController


  def new
    @investor= Investor.new
  end


  def create
    @investor= Investor.create(investor_params)

    if @investor
      redirect_to investor_path(@investor)
    else
      render :new
    end
  end


  def show
    @investor= Investor.find_by(id: params[:id])
  end
  

  private

  def investor_params
    params.require(:investor).permit(:name, :password)
  end
end
