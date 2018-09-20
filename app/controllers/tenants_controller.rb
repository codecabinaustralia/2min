class TenantsController < ApplicationController
  def show_all
    @users = User.where.not(subdomain: [nil, false]).all
    
  end

  def drop_tenant
    @user = User.find(params[:user_id])

    #if @user.subdomain.present?
    #Apartment::Tenant.drop(@user.subdomain)
    #end
    @charges = Charge.where(user_id: @user.id).all
    @charges.destroy_all
    
    @user.destroy

    redirect_to tenants_show_all_path
  end

end
