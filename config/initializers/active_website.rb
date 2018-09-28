require 'apartment/elevators/subdomain'

class ActiveWebsite < Subdomain
	def parse_tenant_name(request)
		tenant = super(request)
		by_domain(request) || tenant
	end

	def by_domain
		@host = request.host
		@host = @host.sub(/^www./,'')
		website = User.find_by(domain: @host)
		website && website.subdomain
	end
end