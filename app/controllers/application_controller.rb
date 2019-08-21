class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  # def after_sign_in_path_for _resource
  #   request.referrer
  # end

  def after_sign_out_path_for _resource
    request.referrer
  end
end
