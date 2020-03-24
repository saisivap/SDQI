class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:block,:flate,:phone_number,:image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name,:block,:flate,:phone_number,:image])
  end
  def admin_user
    redirect_to(root_path) unless current_user && current_user.admin?
  end
end
