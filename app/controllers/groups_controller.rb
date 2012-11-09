class GroupsController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groups }
    end
  end
  
  def create
    @user = User.find(params[:user_id])
    @group = @user.groups.create(params[:group])
    redirect_to user_path(@user)
  end
  
  # GET /users/1
  # GET /users/1.json
  def show
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group }
    end
  end
end
