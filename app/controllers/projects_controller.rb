class ProjectsController < ApplicationController
  before_action :load_user, only: [:index, :create, :new]
  before_action :load_project, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @projects = @user ? @user.projects : Project.all
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    respond_with(@project)
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    @project.user = @user
    @project.save
    respond_with(@project)
  end

  def update
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    user = @project.user
    @project.destroy
    respond_with(user, @project)
  end

  private
    def load_project
      @project = Project.find(params[:id])
    end

    def load_user
      @user = User.find(params[:user_id]) if params[:user_id]
    end

    def project_params
      params.require(:project).permit(:title, :description, :user_id, :image)
    end
end
