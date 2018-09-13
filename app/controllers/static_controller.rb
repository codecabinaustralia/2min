class StaticController < ApplicationController
  def home

  end

  def session_placeholder
  	reset_session
  	session[:company] = params[:company_name].downcase.gsub(/\s+/, "")
  	
  	redirect_to templates_path
  end

end
