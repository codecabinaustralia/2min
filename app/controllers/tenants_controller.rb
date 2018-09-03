class TenantsController < ApplicationController
  def show_all
    @users = User.where.not(subdomain: [nil, false]).all
    
  end

  def drop_tenant
    @user = User.find(params[:user_id])

    if @user.subdomain.present?
    Apartment::Tenant.drop(@user.subdomain)
    @user.update_attributes(subdomain: nil)
    @site = Site.where(user_id: @user.id).last
    @site.destroy
    end


    @user.destroy

    redirect_to tenants_show_all_path
  end

end
