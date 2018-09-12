class StaticController < ApplicationController
  def home
  	if user_signed_in?
  		redirect_to destroy_user_session_path, method: :delete
  	end
  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name].downcase.gsub(/\s+/, "")
  	
  	redirect_to new_user_registration_path
  end

end
