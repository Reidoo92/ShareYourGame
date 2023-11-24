class UsersController < ApplicationController
  before_action :set_user, only: [:show] # Pour afficher l'âge du user avec son birthday

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
    current_user.update(update_user_name)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def user_all
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :birthday, :email, :password)
  end

  def update_user_name
    params.require(:user).permit(:user_name, :eamil, :password, :photo)
  end

  # Fonction qui permet d'afficher l'âge de l'utilisateur grâce à sa date d'anniversaire

  def set_user
    @user = User.find(params[:id])
  end

  def calculate_age(date_of_birth)
    now = Time.now.utc.to_date
    now.year - date_of_birth.year - (date_of_birth.to_date.change(year: now.year) > now ? 1 : 0)
  end

  helper_method :calculate_age

  # --------------------------------------------------------------------------------------

end
