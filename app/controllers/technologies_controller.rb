class TechnologiesController < ApplicationController
  def index
    @technologies = Technology.all
  end
  
  def show
    @technology = Technology.find(params[:id])
  end
  
  def new
    @technology = Technology.new
  end
  
  def edit
    @technology = Technology.find(params[:id])
  end
  
  def create
    #render plain: params[:technology].inspect
    @technology = Technology.new(technology_params)
 
    if @technology.save
      redirect_to @technology
    else
      render 'new'
    end
  end
  
  def update
    @technology = Technology.find(params[:id])
   
    if @technology.update(technology_params)
      redirect_to @technology
    else
      render 'edit'
    end
  end
  
  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy
   
    redirect_to technologies_path
  end
  
  private
  def technology_params
    params.require(:technology).permit(:name)
  end
end
