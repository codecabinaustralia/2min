require_relative 'boot'
require 'apartment/elevators/subdomain'
require 'rails/all'
require "active_storage"
require 'rack/ssl-enforcer'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Powerhouse
	
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.middleware.use Rack::SslEnforcer, :only_hosts => 'www.2min.co', :strict => true, :hsts => { :expires => 0, :subdomains => false, :preload => false }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
