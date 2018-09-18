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

    @user = User.find(@site.user_id)
    @user.update_attributes(stripe_customer_id: customer.id)

  	redirect_to charge_building_path

  end

  def building
    sleep(8)
    redirect_to charge_thank_you_path
  end

  def thank_you
    require 'whois-parser'

    @site = Site.last
    @domain = @site.company_name + ".com"
    #Check domain
    whois = Whois::Client.new
    record =  whois.lookup(@domain.to_s)
    parser = record.parser

    @domain_available = parser.available?


    @charge = Charge.where(user_id: @site.user_id).last
  	
  end

 
  
end
