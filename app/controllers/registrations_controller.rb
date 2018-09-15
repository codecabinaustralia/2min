class RegistrationsController < Devise::RegistrationsController

def update
  if current_user.update_with_password(params[:user_params])
    bypass_sign_in current_user
    redirect_to root_path, notice: "Password updated successfully!"
  else
    redirect_back(fallback_location: root_path, alert: current_user.errors.full_messages.join(" ").html_safe)
  end
end

  protected


  def after_sign_up_path_for(resource)
    create_temp_site_path
  end

  def update_resource(resource, params)

    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
	  root_url(:subdomain => resource.subdomain)
	end

end