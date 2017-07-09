class UsersController < ApplicationController

before_filter :check_session

  def create
    user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        flash[:success] = "Your account was successfully created!"
        redirect_to '/'
      else
        flash[:danger] = user.errors.full_messages.join(". Also, ")
        redirect_to :back
      end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end

end
