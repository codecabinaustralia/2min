class ApplicationController < ActionController::Base
	require 'securerandom'
	before_action :configure_permitted_parameters, if: :devise_controller?
	#before_action :check_subdomain
	before_filter :force_www!

	

	def check_subdomain
      @host = request.host
      @host = @host.sub(/^www./,'')
      @found_user = User.where(domain: @host).last
      if @found_user.present?
      	  Apartment::Tenant.switch!(@found_user.subdomain)
          redirect_to sites_url(:subdomain => request.subdomain)
      else
      	redirect_to root_path
      end   
	end

	protected
		def force_www!
		  if Rails.env.production? and request.host[0..3] != "www."
		    redirect_to "#{request.protocol}www.#{request.host_with_port}#{request.fullpath}", :status => 301
		  end
		end
		
		def after_sign_in_path_for(resource)
		  sites_url(:subdomain => resource.subdomain)
		end

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain, :domain])
	  end

	 
	
end
