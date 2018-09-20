class TenantsController < ApplicationController
  def show_all
    @users = User.where.not(subdomain: [nil, false]).all
    
  end

  def drop_tenant
    @users = User.where.not(email: "simon@shockwaveelectrical.com.au").all

    @users.each do |user|
      
    if @user.subdomain.present?
    Apartment::Tenant.drop(@user.subdomain)
    end


    user.destroy
  end

    redirect_to tenants_show_all_path
  end

end
