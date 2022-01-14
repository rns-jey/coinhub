class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.instance_of?(Admin)
      admins_approvals_path
    elsif resource.instance_of?(User)
      root_path
    end
  end
end
