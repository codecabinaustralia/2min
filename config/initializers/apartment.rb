# You can have Apartment route to the appropriate Tenant by adding some Rack middleware.
require 'apartment/elevators/subdomain'

Apartment.configure do |config|

  config.excluded_models = %w{User}
  config.tenant_names = lambda { User.pluck :subdomain }


end

Rails.application.config.middleware.use Apartment::Elevators::Subdomain
Apartment::Elevators::Subdomain.excluded_subdomains = ['www', 'admin', 'test', 'public', 'tenant_name']