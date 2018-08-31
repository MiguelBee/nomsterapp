class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to root_path
  end
  
  def edit
    @user = User.find(params[:id])
  end

private 
  
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :password)
  end
end
