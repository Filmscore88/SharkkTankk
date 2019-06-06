class InventionInvestmentsController < ApplicationController
  def new
    @invention_investment= InventionInvestment.new
  end

  def create
    #binding.pry
    @invention_investment= InventionInvestment.create(invention_investment_params)
    if @invention_investment

      redirect_to invention_investment_path(@invention_investment)
    else
      render :new
    end
  end

  def show
    #binding.pry
    @invention_investment= InventionInvestment.find_by(id: params[:id])


  end

  def index

    @invention_investments= InventionInvestment.all


  end

  private

  def invention_investment_params
    params.require(:invention_investment).permit(:id, :amount, :investor_id, :invention_id, :inventor_id)
  end

end
