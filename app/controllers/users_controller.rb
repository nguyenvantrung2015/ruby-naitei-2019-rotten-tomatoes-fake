class UsersController < ApplicationController
  before_action :load_user, only: :show

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    log_in @user if @user.save
    redirect_to request.referrer
  end

  private

  def user_params
    params.require(:user).permit User::ATTR
  end

  def load_user
    @user = User.find_by id: params[:id]

    return if @user
    redirect_to root_url
  end
end
