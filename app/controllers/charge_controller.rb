class ChargeController < ApplicationController
	protect_from_forgery with: :null_session
  def payment_page
  	
  end

  def create_charge
  	require "stripe"
  	Stripe.api_key = ENV["STRIPE_API_KEY"]

  	token = params[:stripeToken]

  	customer = Stripe::Customer.create(
  	  description: "2min websites",
  	  source: token,
  	  email: params[:stripeEmail]
  	)

  	# Charge the Customer instead of the card:
  	subscription = Stripe::Subscription.create(
  	  :customer => customer.id,
  	  :items => [
  	    {
  	      :plan => "basic",
  	    },
  	  ]
  	)


  	new_customer = Customer.new(
  		stripe_id: customer.id,
  		subscription_id: subscription.id
  		)
  	new_customer.save!

  	@site = Site.last
  	@site.update_attributes(activated: true)

  	redirect_to charge_thank_you_path

  end

  def thank_you
    @site = Site.last
    require 'whois-parser'
    
    psuedo_domain = @site.company_name.downcase.gsub(/\s+/, "") + ".com.au"
    whois = Whois::Client.new
    parser = whois.lookup(psuedo_domain)

    @domain_available = parser.available?
  	
  end

 
  
end
