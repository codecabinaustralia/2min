class StaticController < ApplicationController
  def home
    if user_signed_in?
      sign_out_and_redirect(current_user)
    end
  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name].downcase.gsub(/\s+/, "")
  	
    #Check domain
    whois = Whois::Client.new
    record =  whois.lookup("#{session[:company]}.com.au")
    parser = record.parser

    session[:initial_domain_available] = parser.available?

  	redirect_to templates_path
  end

  def chosen_template
    session[:template_id] = params[:template_id].downcase.gsub(/\s+/, "")
    
    redirect_to new_user_registration_path
  end


end
