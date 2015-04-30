class ColorFamiliesController < ApplicationController
  def index
    @color_families = ColorFamily.all
  end
  
  def show
    @color_family = ColorFamily.find(params[:id])
  end
  
  def new
    @color_family = ColorFamily.new
  end
  
  def edit
    @color_family = ColorFamily.find(params[:id])
  end
  
  def create
    #render plain: params[:colorfamily].inspect
    @color_family = ColorFamily.new(colorfamily_params)
 
    if @color_family.save
      redirect_to @color_family
    else
      render 'new'
    end
  end
  
  def update
    @color_family = ColorFamily.find(params[:id])
   
    if @color_family.update(color_family_params)
      redirect_to @color_family
    else
      render 'edit'
    end
  end
  
  def destroy
    @color_family = ColorFamily.find(params[:id])
    @color_family.destroy
   
    redirect_to color_families_path
  end
  
  private
  def color_family_params
    params.require(:color_family).permit(:name, :description)
  end
end
