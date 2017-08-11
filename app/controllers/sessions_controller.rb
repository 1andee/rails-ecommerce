class SessionsController < ApplicationController

before_filter :check_session, only: [:new, :create]

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome back, #{user.firstname}!"
      redirect_to '/'
    else
      flash[:danger] = "We couldn't log you in. Please verify that your email/password is correct."
      redirect_to :back
    end
  end

  def destroy
    if current_user.nil?
      flash[:warning] = "You aren't logged in."
      redirect_to '/'
    else
      session[:user_id] = nil
      flash[:warning] = "You have successfully logged out"
      redirect_to '/'
    end
  end

end
