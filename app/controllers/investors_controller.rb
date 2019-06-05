class InvestorsController < ApplicationController

  def new

  end

  def create

  end

  def show

  end

  private

  def investor_params
    params.require(:investor).permit(:name, :email)
  end 
end
