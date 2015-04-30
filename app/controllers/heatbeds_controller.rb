class HeatbedsController < ApplicationController
  def index
    @heatbeds = Heatbed.all
  end
  
  def show
    @heatbed = Heatbed.find(params[:id])
  end
  
  def new
    @heatbed = Heatbed.new
  end
  
  def edit
    @heatbed = Heatbed.find(params[:id])
  end
  
  def create
    #render plain: params[:heatbed].inspect
    @heatbed = Heatbed.new(heatbed_params)
 
    if @heatbed.save
      redirect_to @heatbed
    else
      render 'new'
    end
  end
  
  def update
    @heatbed = Heatbed.find(params[:id])
   
    if @heatbed.update(heatbed_params)
      redirect_to @heatbed
    else
      render 'edit'
    end
  end
  
  def destroy
    @heatbed = Heatbed.find(params[:id])
    @heatbed.destroy
   
    redirect_to heatbed_path
  end
  
  private
  def heatbed_params
    params.require(:heatbed).permit(:name, :description)
  end
end
