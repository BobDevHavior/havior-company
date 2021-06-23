class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # uncomment to raise error if authorize is not call in controller
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def configure_permitted_parameters
    user_data = [
      :nick_name,
      :admin,
      :senior,
      :first_name,
      :last_name
    ]
    # raise
    devise_parameter_sanitizer.permit(:sign_up, keys: user_data)
    devise_parameter_sanitizer.permit(:account_update, keys: user_data)
  end


  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def user_not_authorized
    flash[:alert] = "Vous n'êtes pas autorisés à réaliser cette action."
    redirect_to(root_path)
  end

end
