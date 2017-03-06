#
# ApplicationController
#
# @author rashid
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Sign in path for different admin levels
  def after_sign_in_path_for(_resource)
    user_root_path
  end

  # After sign out path for different
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  # access denied rescue
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to access_denied_path, notice: "Access denied"
  end

  # Root path of user based on their roles
  def user_root_path
    if current_user.has_role? :admin
      topics_path
    else
      root_path
    end
  end

  def access_denied_path
    return :back if request.env["HTTP_REFERER"].present?
    user_root_path
  end

  # Added attributes for user
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :city, :mobile, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :city, :mobile, :gender])
  end
end
