class Admin::BaseController < ApplicationController
  before_action :check_logged_in, :check_admin
  layout "admin"

  private

  def check_logged_in
    return if logged_in?
    flash[:danger] = t "admin.not_logged_in"
    redirect_to root_url
  end

  def check_admin
    return if current_user.admin?
    flash[:danger] = t "admin.not_admin"
    redirect_to root_url
  end
end
