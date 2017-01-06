class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def index

  end

  def show

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
   @user = User.all
  end

  def update
    if @user.update(user_params)
       flash[:success] = "Success update the user"
      redirect_to @user
    else
      flash[:danger] = "Invalid updating user"
      render :edit
    end
  end

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :name, :password)
  end

end
