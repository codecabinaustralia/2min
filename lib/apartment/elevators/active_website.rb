require 'apartment/elevators/subdomain'

module Apartment
	module Elevators
		class ActiveWebsite < Subdomain
			def parse_tenant_name(request)
				tenant = super(request)
				by_domain(request) || tenant
			end

			def by_domain(request)
				website = User.find_by(domain: request.host)
				website && website.subdomain
			end

			def call(env)
				request = Rack::Request.new(env)

				database = @processor.call(request)

				if database
					if Website.where(slug: database).exists?
						Apartment::Tenant.switch(database) { @app.call(env) }
					else
						::NotFound.new(Rails.root.join('public/404.html')).call(env)
					end
				else
					@app.call(env)
				end
			end

		end