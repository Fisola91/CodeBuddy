class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :gender, :city, :bio, :first_name, :last_name, :communities, :topic_interest, :programming_languages, :linkedin_link, :github_link])
  end

  def user_root_path
    user_path(current_user)
  end
end
