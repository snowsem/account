class ApplicationController < ActionController::Base
  #admin_layout
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surename, :family, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit! }
  end
end
