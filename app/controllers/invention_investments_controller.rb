class InventionInvestmentsController < ApplicationController
  def new
    @investment= Investment.new
  end

  def create

  end

  def show

  end

  def index
  end

  private

  def investment_investment_params
    params.require(:invention_investments).permit(:amount, :investor_id, :inventor_id, :invention_id)
  end 

end
