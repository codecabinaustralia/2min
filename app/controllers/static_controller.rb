class StaticController < ApplicationController
  def home
    
    @found_domain = User.where(domain: request.host).last

    #Everytime the homepage is hit we switch to public tenant
    if @found_domain.present?
      Apartment::Tenant.switch!(@found_domain.subdomain)
    else  
      Apartment::Tenant.switch!('public')
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
