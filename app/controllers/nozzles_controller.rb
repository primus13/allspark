class NozzlesController < ApplicationController
  def index
    @nozzles = Nozzle.all
  end
  
  def show
    @nozzle = Nozzle.find(params[:id])
  end
  
  def new
    @nozzle = Nozzle.new
  end
  
  def edit
    @nozzle = Nozzle.find(params[:id])
  end
  
  def create
    #render plain: params[:nozzle].inspect
    @nozzle = Nozzle.new(nozzle_params)
 
    if @nozzle.save
      redirect_to @nozzle
    else
      render 'new'
    end
  end
  
  def update
    @nozzle = Nozzle.find(params[:id])
   
    if @nozzle.update(nozzle_params)
      redirect_to @nozzle
    else
      render 'edit'
    end
  end
  
  def destroy
    @nozzle = Nozzle.find(params[:id])
    @nozzle.destroy
   
    redirect_to nozzles_path
  end
  
  private
  def nozzle_params
    params.require(:nozzle).permit(:name, :description)
  end
end
