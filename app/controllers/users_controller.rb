class UsersController < ApplicationController
  def new
  end
  
  def show
    @user = User.find(params[:id])
   # debugger
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end

    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end
  end
end
