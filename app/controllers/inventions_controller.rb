class InventionsController < ApplicationController
  before_action :inventor_logged_in?, except: [:index, :show]

  def index
    @inventions= Invention.all
  end


  def new
    if params[:inventor_id].to_i != current_user.id

      redirect_to inventions_path
    else
      @invention= Invention.new(inventor_id: params[:inventor_id])
    end
  end

  def create
    @inventor= Inventor.find_by(id: params[:invention][:inventor_id])

    @invention= @inventor.inventions.build(invention_params)
    @invention.save


    if @invention

      redirect_to inventor_invention_path(@inventor, @invention)
    else
      render :new
    end
  end

  def show
    @invention= Invention.find_by(id: params[:id])
  end

  def edit
    @invention= Invention.new(inventor_id: params[:inventor_id])

  end

  def update

  end

  private

  def invention_params

    params.require(:invention).permit(:id, :name, :description, :inventor_id)
  end

end
