class SessionsController < ApplicationController

  def create
    if current_user
      flash[:danger] = "You are already logged in."
      redirect_to '/'
    else
      user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          flash[:success] = "Welcome back, #{user.firstname}!"
          redirect_to '/'
      else
        flash[:danger] = "Something blew up. Sorry about that."
        redirect_to :back
      end
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:warning] = "You have successfully logged out"
    redirect_to '/'
  end

end
