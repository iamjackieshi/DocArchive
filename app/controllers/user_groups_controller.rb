class UserGroupsController < ApplicationController
  def index
  	@user_groups = UserGroup.all
  end

  def show
    @user_group = UserGroup.find(params[:id])
  end

  def new   
    @user_group = UserGroup.new
  end

  def create
    @user_group = UserGroup.new(user_group_params)

    if @user_group.save
      redirect_to @user_group
    else
      render :new
    end
  end

  def edit
    @user_group = UserGroup.find(params[:id])
  end

  def update
    @user_group = UserGroup.find(params[:id])

    if @user_group.update(user_group_params)
      redirect_to @user_group
    else
      render :new
    end
  end

  def destroy
    @user_group = UserGroup.find(params[:id])
    @user_group.destroy
    redirect_to user_groups_path, notice: 'User group deleted'
  end

  private

  def user_group_params
    params.require(:user_group).permit(:name)
  end

end
