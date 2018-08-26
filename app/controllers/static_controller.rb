class StaticController < ApplicationController
  def home
  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name]
  	
  	redirect_to new_user_registration_path
  end

end
