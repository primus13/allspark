class HotendsController < ApplicationController
  def index
    @hotends = Hotend.all
  end
  
  def show
    @hotend = Hotend.find(params[:id])
  end
  
  def new
    @hotend = Hotend.new
  end
  
  def edit
    @hotend = Hotend.find(params[:id])
  end
  
  def create
    #render plain: params[:hotend].inspect
    @hotend = Hotend.new(hotend_params)
 
    if @hotend.save
      redirect_to @hotend
    else
      render 'new'
    end
  end
  
  def update
    @hotend = Hotend.find(params[:id])
   
    if @hotend.update(hotend_params)
      redirect_to @hotend
    else
      render 'edit'
    end
  end
  
  def destroy
    @hotend = Hotend.find(params[:id])
    @hotend.destroy
   
    redirect_to hotends_path
  end
  
  private
  def hotend_params
    params.require(:hotend).permit(:name, :description)
  end
end
