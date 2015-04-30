class UserPrintersController < ApplicationController
  before_action :load_user, only: [:index, :create, :new]
  before_action :load_printer, only: [:show, :edit, :update, :destroy]
  
  respond_to :html
  
  def index
    @user_printers = UserPrinter.includes(:printer, :user).all
    respond_with(@user_printers)
  end

  def show
    
    respond_with(@user_printer)
  end

  def new
    @user_printer = UserPrinter.new
    respond_with(@user_printer)
  end

  def edit
  end

  def create
    @user_printer = UserPrinter.new(project_params)
    @user_printer.user = @user
    @user_printer.save
    respond_with(@user_printer)
  end

  def update
    @user_printer.update(project_params)
    respond_with(@user_printer)
  end

  def destroy
    user = @user_printer.user
    @user_printer.destroy
    respond_with(user, @user_printer)
  end

  private
    def load_printer
      @user_printer = UserPrinter.find(params[:id])
    end

    def load_user
      @user = User.find(params[:user_id]) if params[:user_id]
    end

    def project_params
      params.require(:user_printer).permit(:printer_id, :user_id)
    end
end