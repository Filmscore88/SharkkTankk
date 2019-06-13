class InvestorsController < ApplicationController


  def new
    @investor= Investor.new
  end


  def create
    @investor= Investor.new(investor_params)
      if @investor.save
        start_investor_session(@investor)
      else
        flash[:notice]= 'ERROR: Account was not created'
        render :new
      end
  end


  def show
    @investor= Investor.find_by(id: params[:id])
  end


  private

  def investor_params
    params.require(:investor).permit(:id, :name, :password)
  end
end
