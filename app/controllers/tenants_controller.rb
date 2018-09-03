class TenantsController < ApplicationController
  def show_all
    @users = User.where.not(subdomain: [nil, false]).all
    
  end

  def drop_tenant
    @user = User.find(user_id: params[:user_id])
    Apartment::Tenant.destroy(@user.subdomain)

    redirect_to tenants_show_all_path
  end

end
