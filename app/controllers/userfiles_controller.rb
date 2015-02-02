class UserfilesController < ApplicationController
  before_action :load_project, only: [:index, :create, :new]
  before_action :load_userfile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @userfiles = Userfile.all
    respond_with(@userfiles)
  end

  def show
    respond_with(@userfile)
  end

  def new
    @userfile = Userfile.new
    respond_with(@userfile)
  end

  def edit
  end

  def create
    @userfile = Userfile.new(userfile_params)
    @userfile.project = @project
    @userfile.save
    respond_with(@project)
  end

  def update
    @userfile.update(userfile_params)
    respond_with(@userfile)
  end

  def destroy
    @userfile.destroy
    respond_with(@userfile)
  end

  private
    def load_userfile
      @userfile = Userfile.find(params[:id])
    end

    def load_project
      @project = Project.find(params[:project_id]) if params[:project_id]
    end

    def userfile_params
      params.require(:userfile).permit(:title, :description, :project_id, :file)
    end
end
