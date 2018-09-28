class ApplicationController < ActionController::Base
	require 'securerandom'
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :check_subdomain
	
	def check_subdomain

      @host = request.host
      @host = @host.sub(/^www./,'')
      @found_user = User.where(domain: @host).last
      if @found_user.present?
      else
        redirect_to sites_url(:subdomain => request.subdomain)
      end   

	end

	protected
		def after_sign_in_path_for(resource)
		  sites_url(:subdomain => resource.subdomain)
		end

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain, :domain])
	  end

	 
	
end
