class ApplicationController < ActionController::Base
	require 'securerandom'
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :redirect_subdomain

	protected

		def configure_permitted_parameters
		    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin, :subdomain, :domain])
		    devise_parameter_sanitizer.permit(:account_update, keys: [:admin, :subdomain, :domain])
		end


		def redirect_subdomain
		  if request.host == '2min.co'
		    redirect_to 'https://www.2min.co' + request.fullpath, :status => 301
		  end
		end

		def after_sign_in_path_for(resource)
		  sites_url(:subdomain => resource.subdomain)
		end	 
	
end
