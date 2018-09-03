class StaticController < ApplicationController
  def home
  	if user_signed_in?
  		@site = Site.last
  		redirect_to site_path(@site.id)
  	end
  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name]
  	
  	redirect_to new_user_registration_path
  end

end
