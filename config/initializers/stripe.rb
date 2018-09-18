# config/initializers/stripe.rb
Stripe.api_key             = ENV['STRIPE_API_KEY']     # e.g. sk_live_...
StripeEvent.signing_secret = ENV['STRIPE_SIGNING_SECRET'] # e.g. whsec_...

StripeEvent.configure do |events|


  events.all do |event|
  	if event.type == 'charge.succeeded'
  		charge = event.data.object
  		user = User.find_by(stripe_customer_id: charge.customer)

	    if user.present?
	        new_charge = Charge.new(
	          user_id: user.id,
	          stripe_id: charge.id,
	          order_title: "Successful Transaction",
	          amount: charge.amount,
	          credit_brand: charge.source.brand,
	          credit_last_4: charge.source.last4,
	          credit_exp_month: charge.source.exp_month,
	          credit_exp_year: charge.source.exp_year,
	          created_at: charge.created,
	          )
	        new_charge.save
	    end

	end
    # Handle all event types - logging, etc.
  end
end