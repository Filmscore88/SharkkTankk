class InventionsController < ApplicationController

  def index
    @inventions= Invention.all
  end

  def new
    @invention= Invention.new
  end

  def create
    @invention= Invention.new(invention_params)
    @invention.save
    if @invention
      redirect_to invention_path(@invention)
    else
      render :new
    end
  end

  def show
    @invention= Invention.find_by(invention_params)

  end

  def edit
  end

  def update

  end

  private

  def invention_params
    params.require(:invention).permit(:name, :inventor_id, :created_at, :description)
  end

end
