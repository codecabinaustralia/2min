class ApplicationController < ActionController::Base
	require 'securerandom'
	before_action :configure_permitted_parameters, if: :devise_controller?

	before_filter :add_www_subdomain

	  

	  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain])
	  end

	  private
	  def add_www_subdomain
	    unless /^www/.match(request.host)
	      redirect_to("#{request.protocol}x.com#{request.request_uri}",
	                  :status => 301)
	    end
	  end
	
end
