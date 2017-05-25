class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def after_sign_up_path_for(resource)
    users_path
  end

  def after_sign_in_path_for(resource)
    current_user.create_user_interests(session[:selected_interest_ids])
    users_path
  end
end
