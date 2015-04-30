class PrintersController < ApplicationController
  def index
    @printers = Printer.all
  end
  
  def show
    @printer = Printer.find(params[:id])
  end
  
  def new
    @printer = Printer.new
  end
  
  def edit
    @printer = Printer.find(params[:id])
  end
  
  def create
    #render plain: params[:printer].inspect
    @printer = Printer.new(printer_params)
 
    if @printer.save
      redirect_to @printer
    else
      render 'new'
    end
  end
  
  def update
    @printer = Printer.find(params[:id])
   
    if @printer.update(printer_params)
      redirect_to @printer
    else
      render 'edit'
    end
  end
  
  def destroy
    @printer = Printer.find(params[:id])
    @printer.destroy
   
    redirect_to printers_path
  end
  
  private
  def printer_params
    params.require(:printer).permit(:name, :description)
  end
end
