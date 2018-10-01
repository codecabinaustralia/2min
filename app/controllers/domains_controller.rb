class DomainsController < ApplicationController
  before_action :set_domain, only: [:show, :edit, :update, :destroy]

  # GET /domains
  # GET /domains.json
  def index
    @domains = Domain.all
  end

  # GET /domains/1
  # GET /domains/1.json
  def show
  end

  # GET /domains/new
  def new
    @domain = Domain.new
  end

  # GET /domains/1/edit
  def edit
  end

  # POST /domains
  # POST /domains.json
  def create
    #Delete all existing records (Should only ever be one max)
    @existing_domains = Domain.all
    @existing_domains.destroy_all

    

    #Create domain in db
    @domain = Domain.new(domain_params)

      if @domain.save

        #Check domain
        require 'dnsimple' #ACC ID  
        client = Dnsimple::Client.new(access_token: "siaZ0YIbNM12f815m5kcBk4MvXJNBLES")
        account_id = 84989
        response = client.registrar.check_domain(account_id, "#{ @domain.domain_name }")

        if response.data.available == false || response.data.available == false
          redirect_to domains_path(domain_unavailable: response.data.available, domain_premium: response.data.premium)
        end

        if response.data.available == true
          redirect_to approve_domain_path
        end

      else
        format.html { render :new }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    
  end

  # PATCH/PUT /domains/1
  # PATCH/PUT /domains/1.json
  def update
    respond_to do |format|
      if @domain.update(domain_params)
        format.html { redirect_to create_dnssimple_contact_path, notice: 'Domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @domain }
      else
        format.html { render :edit }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve_domain
    @domain = Domain.last
    @domain_last = Domain.last
    #Get Details Here
  end

  def create_dnssimple_contact
    @domain = Domain.last
    #Create an account in simple DNS
    require 'dnsimple' #ACC ID  
    client = Dnsimple::Client.new(access_token: "siaZ0YIbNM12f815m5kcBk4MvXJNBLES")
    account_id = 84989
    client.contacts.create_contact(
      84989,
      first_name: "Josh",
      last_name: "Edgar",
      address1: "397 Christine Avenue",
      city: "Gold Coast",
      state_province: "Queensland",
      postal_code: "4000",
      country: "Australia",
      email: "info@theblackandwhites.com.au",
      phone: "+61 043 1373024",
      fax: "+61 043 1373024"
    )


    #register_domain = client.registrar.register_domain(
     # account_id,
      #{}"#{@domain.domain_name}",
      #registrant_id: contact.data.id,
      #extended_attributes: ,
      #)

  end

  # DELETE /domains/1
  # DELETE /domains/1.json
  def destroy
    @domain.destroy
    respond_to do |format|
      format.html { redirect_to domains_url, notice: 'Domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_domain
      @domain = Domain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def domain_params
      params.require(:domain).permit(:domain_name, :dns_simple_id, :first_name, :last_name, :address1, :city, :state_province, :country, :postal_code, :email, :phone, :fax)
    end
end
