class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @users, notice: "Your profil was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update #juste user_name
    @user = User.find(update_user_name[:id])
    @user.update(update_user_name[:user])
  end

  private

  def user_all
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :birthday, :email, :password)
  end

  def update_user_name
    params.require(:user).permit(:user_name)
  end
end
