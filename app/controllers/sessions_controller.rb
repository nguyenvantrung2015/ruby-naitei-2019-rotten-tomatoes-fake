class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    session = params[:session]
    user = User.find_by email: session[:email].downcase

    if user&.authenticate(session[:password])
      log_in user
      session[:remember_me] == "1" ? remember(user) : forget(user)
      user.admin? ? redirect_to(admin_root_path) : redirect_to(root_path)
    else
      redirect_to root_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
