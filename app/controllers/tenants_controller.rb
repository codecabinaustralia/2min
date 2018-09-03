class TenantsController < ApplicationController
  def show_all
    @users = User.where.not(subdomain: [nil, false]).all
    
  end

  def drop_tenant
    @user = User.find(params[:user_id])
    @user.update_attributes(subdomain: nil)


    redirect_to tenants_show_all_path
  end

end
