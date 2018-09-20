class ApplicationController < ActionController::Base
	require 'securerandom'
	before_action :configure_permitted_parameters, if: :devise_controller?
	#before_action :check_subdomain
	
	def check_subdomain
	  if user_signed_in?
		  unless request.subdomain == current_user.subdomain
		    redirect_to root_path, alert: "You are not authorized to access that subdomain."
		  end
      end
	end

	protected
		def after_sign_in_path_for(resource)
		  sites_url(:subdomain => resource.subdomain)
		end

		def after_sign_out_path_for(resource)
		  "www.2min.co"
		end

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain, :domain])
	  end

	 
	
end
