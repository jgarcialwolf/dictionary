class SessionsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome #{user.username}"
      redirect_to user
    else
      flash.now[:alert] = "Wrong Credentials!!"
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path, status: :see_other
  end
  
end
