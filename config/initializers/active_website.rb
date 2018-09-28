require 'apartment/elevators/subdomain'
module Apartment
	module Elevators
class ActiveWebsite < Subdomain
	def parse_tenant_name(request)
		tenant = super(request)
		by_domain(request) || tenant
	end

	def by_domain
		website = User.find_by(domain: request.host)
		website && website.subdomain
	end
end
end
end