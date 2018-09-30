class TenantsController < ApplicationController
  before_action :authenticate_user!

  def show_all
    if current_user.admin?
      @users = User.where.not(subdomain: [nil, false]).all
    else
      redirect_to root_path
    end
  end

  def drop_tenant
    if current_user.admin?
      @user = User.find(params[:user_id])
      if @user.subdomain.present?
        Apartment::Tenant.drop(@user.subdomain)
      end
      @charges = Charge.where(user_id: @user.id).all
      @charges.destroy_all
      @user.destroy
      redirect_to tenants_show_all_path
    else
      redirect_to root_path
    end
  end

end
