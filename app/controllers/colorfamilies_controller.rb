class ColorfamiliesController < ApplicationController
  def index
    @colorfamilies = Colorfamily.all
  end
  
  def show
    @colorfamily = Colorfamily.find(params[:id])
  end
  
  def new
    @colorfamily = Colorfamily.new
  end
  
  def edit
    @colorfamily = Colorfamily.find(params[:id])
  end
  
  def create
    #render plain: params[:colorfamily].inspect
    @colorfamily = Colorfamily.new(colorfamily_params)
 
    if @colorfamily.save
      redirect_to @colorfamily
    else
      render 'new'
    end
  end
  
  def update
    @colorfamily = Colorfamily.find(params[:id])
   
    if @colorfamily.update(colorfamily_params)
      redirect_to @colorfamily
    else
      render 'edit'
    end
  end
  
  def destroy
    @colorfamily = Colorfamily.find(params[:id])
    @colorfamily.destroy
   
    redirect_to colorfamilies_path
  end
  
  private
  def colorfamily_params
    params.require(:colorfamily).permit(:name, :description)
  end
end
