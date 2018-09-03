class RegistrationsController < Devise::RegistrationsController

def update
  if current_user.update_with_password(params[:user])
    sign_in(current_user, :bypass => true)
    redirect_to root_url(:subdomain => resource.subdomain)
  else
    render :action => :show
  end
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