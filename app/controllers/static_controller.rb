class StaticController < ApplicationController
  def home
    @host = request.host
    @host = @host.sub(/^www./,'')
    @found_user = User.where(domain: @host).last
    if  @found_user.present?
      Apartment::Tenant.switch(@found_user.subdomain) do
      end
      redirect_to sites_url(:subdomain => @found_user.subdomain)
    end


    if user_signed_in?
      sign_out_and_redirect(current_user)
    end
  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name].downcase.gsub(/\s+/, "")
  	redirect_to templates_path
  end

  def chosen_template
    session[:template_name] = params[:template_name].downcase.gsub(/\s+/, "")
    
    redirect_to new_user_registration_path
  end


end
