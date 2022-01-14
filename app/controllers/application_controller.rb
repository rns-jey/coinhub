class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.instance_of?(Admin)
      admins_approvals_path
    elsif resource.instance_of?(User)
      root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[firstname lastname country])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[firstname lastname country])
  end

  # def after_sign_in_path_for(resource)
  #   if resource.instance_of?(Admin)
  #     admins_approvals_path
  #   elsif resource.instance_of?(User)
  #     root_path
  #   end
  # end
end
