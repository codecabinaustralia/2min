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

    respond_to do |format|
      if @domain.save

        #Check domain
        require 'dnsimple' #ACC ID  
        client = Dnsimple::Client.new(access_token: "siaZ0YIbNM12f815m5kcBk4MvXJNBLES")
        account_id = 84989
        response = client.registrar.check_domain(account_id, "#{ @domain.domain_name }")

        if response.premium == true && response.available == true
          #Find premium price
        end

        format.html { redirect_to @domain, notice: 'Domain was successfully created.' }
        format.json { render :show, status: :created, location: @domain }
      else
        format.html { render :new }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /domains/1
  # PATCH/PUT /domains/1.json
  def update
    respond_to do |format|
      if @domain.update(domain_params)
        format.html { redirect_to @domain, notice: 'Domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @domain }
      else
        format.html { render :edit }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_dnssimple_contact
    #Create an account in simple DNS
    require 'dnsimple' #ACC ID  
    client = Dnsimple::Client.new(access_token: "siaZ0YIbNM12f815m5kcBk4MvXJNBLES")
    account_id = 84989
    client.contacts.create_contact(
      account_id,
      first_name: "#{current_user.subdomain}",
      last_name: "#{current_user.subdomain}",
      address1: ,
      city: ,
      state_province: ,
      postal_code: ,
      country: ,
      email: ,
      phone: ,
      fax: ,
      )
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
      params.require(:domain).permit(:domain_name, :dns_simple_id)
    end
end
