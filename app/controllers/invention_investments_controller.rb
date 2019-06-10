class InventionInvestmentsController < ApplicationController
  def new
    @invention_investment= InventionInvestment.new(investor_id: params[:investor_id])
  end

  def create
    @investor= Investor.find_by(id: params[:invention_investment][:investor_id])
    @invention= Invention.find_by(id: params[:invention_investment][:invention_id])
    @invention.invention_investments.build(invention_investment_params)
    @invention_investment= @investor.invention_investments.build(invention_investment_params)
    @invention_investment.save

    if @invention_investment

      redirect_to investor_invention_investment_path(@investor, @invention_investment)
    else
      render :new
    end
  end

  def show
    @invention_investment= InventionInvestment.find_by(id: params[:id])


  end

  def index

    @invention_investments= InventionInvestment.all


  end

  private

  def invention_investment_params
    params.require(:invention_investment).permit(:id, :amount, :investor_id, :invention_id)
  end

end
