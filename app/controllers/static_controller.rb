class StaticController < ApplicationController
  def home

  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name].downcase.gsub(/\s+/, "")
  	
  	redirect_to templates_path
  end

  def chosen_template
    session[:template_id] = params[:template_id].downcase.gsub(/\s+/, "")
    
    redirect_to new_user_registration_path
  end


end
