class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params)
      if @user.save
        redirect_to beans_path
      else
        render "new"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  private
  def params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
