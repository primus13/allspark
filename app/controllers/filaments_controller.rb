class FilamentsController < ApplicationController
  def index
    @filaments = Filament.includes(:category, :manufacturer, :material).all
  end
  
  def show
    @filament = Filament.includes(:category, :manufacturer, :material).find(params[:id])
  end
  
  def new
    @filament = Filament.new
  end
  
  def edit
    @filament = Filament.find(params[:id])
  end
  
  def create
    #render plain: params[:filament].inspect
    @filament = Filament.new(filament_params)
 
    if @filament.save
      redirect_to @filament
    else
      render 'new'
    end
  end
  
  def update
    @filament = Filament.find(params[:id])
   
    if @filament.update(filament_params)
      redirect_to @filament
    else
      render 'edit'
    end
  end
  
  def destroy
    @filament = Filament.find(params[:id])
    @filament.destroy
   
    redirect_to filaments_path
  end
  
  private
  def filament_params
    params.require(:filament).permit(:category_id, :manufacturer_id, :material_id, :name, :description)
  end
end
