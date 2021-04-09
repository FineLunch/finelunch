class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users  = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    new_user = User.new(user_params)
    if new_user.save!
      redirect_to users_path, flash: { success: "Les données ont bien été enregistrées." }
    else 
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, flash: { success: "Les données ont bien été enregistrées." }
    else 
      render :edit
    end
  end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  protected

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :firstname, :lastname, :phone_number, :address, :bio)
  end
end
