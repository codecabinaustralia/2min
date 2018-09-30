class ApplicationController < ActionController::Base
	require 'securerandom'
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :redirect_subdomain
	before_action :https_redirect
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

		def configure_permitted_parameters
		    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])
		    devise_parameter_sanitizer.permit(:account_update, keys: [:admin])
		  end

		def https_redirect
			if ENV["ENABLE_HTTPS"] == "yes"
				if request.ssl? && !use_https?|| !request.ssl? && use_https?
					protocol = request.ssl? ? "http" : "https"
					flash.keep
					redirect_to protocol: "#{protocol}://", status: :moved_permanently
				end
			end
		end

		def use_https?
		end

		def redirect_subdomain
		  if request.host == '2min.co'
		    redirect_to 'https://www.2min.co' + request.fullpath, :status => 301
		  end
		end

		def after_sign_in_path_for(resource)
		  sites_url(:subdomain => resource.subdomain)
		end

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain, :domain])
	  end

	 
	
end
