class RegistrationsController < Devise::RegistrationsController

def update
	sign_in(current_user, :bypass => true)
end

  protected


  def after_sign_up_path_for(resource)
    tenant_url(:subdomain => resource.subdomain)
  end

  def update_resource(resource, params)

    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
	  root_url(:subdomain => resource.subdomain)
	end

end