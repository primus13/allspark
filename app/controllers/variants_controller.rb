class VariantsController < ApplicationController
  def index
    @variants = Variant.all
  end
  
  def show
    @variant = Variant.find(params[:id])
  end
  
  def new
    @variant = Variant.new
  end
  
  def edit
    @variant = Variant.find(params[:id])
  end
  
  def create
    #render plain: params[:variant].inspect
    @variant = Variant.new(variant_params)
 
    if @variant.save
      redirect_to @variant
    else
      render 'new'
    end
  end
  
  def update
    @variant = Variant.find(params[:id])
   
    if @variant.update(variant_params)
      redirect_to @variant
    else
      render 'edit'
    end
  end
  
  def destroy
    @variant = Variant.find(params[:id])
    @variant.destroy
   
    redirect_to variants_path
  end
  
  private
  def variant_params
    params.require(:variant).permit(:technology_id, :name, :diameter)
  end
end
