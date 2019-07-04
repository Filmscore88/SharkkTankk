class InventionInvestmentsController < ApplicationController
  before_action :investor_only, except: [:index, :show]


  def index
    @invention_investments= InventionInvestment.all
  end


  def new
    if params[:user_id].to_i != current_user.id
      redirect_to invention_investments_path
    else
      @invention_investment= InventionInvestment.new(user_id: params[:user_id])
    end
  end


  def create
    @user= User.find_by(id: params[:invention_investment][:user_id])
    @invention= Invention.find_by(id: params[:invention_investment][:invention_id])
    @invention.update(invested?: true)
    @invention.invention_investments.build(invention_investment_params)
    @invention_investment= @user.invention_investments.build(invention_investment_params)

      if @invention_investment.save
        redirect_to user_invention_investment_path(@user, @invention_investment)
      else
        flash[:notice]= 'ERROR: Invalid Entry'
        render :new
      end
  end


  def show
    @invention_investment= InventionInvestment.find_by(id: params[:id])
  end

  private

  def invention_investment_params
    params.require(:invention_investment).permit(:amount, :user_id, :invention_id)
  end

end
