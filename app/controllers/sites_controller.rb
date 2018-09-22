class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]


  def tenant    

    Trade.create(title: 'Bricklayer')
    Trade.create(title: 'Builder')
    Trade.create(title: 'Cabinet Maker')
    Trade.create(title: 'Carpenter')
    Trade.create(title: 'Carpet Layer')
    Trade.create(title: 'Electrician ')
    Trade.create(title: 'Landscaper')
    Trade.create(title: 'Mechanic')
    Trade.create(title: 'Painter and Decorator')
    Trade.create(title: 'Pest Control')
    Trade.create(title: 'Tilers')
    Trade.create(title: 'Plumber')
    Trade.create(title: 'Other')
    Service.create(title: 'Brick & Block Supply', trade_id: 1)
    Service.create(title: 'Brick & Block Laying', trade_id: 1)
    Service.create(title: 'Commercial Work', trade_id: 1)
    Service.create(title: 'Domestic Work', trade_id: 1)
    Service.create(title: 'Extensions', trade_id: 1)
    Service.create(title: 'Renovations', trade_id: 1)
    Service.create(title: 'Retaining wall work', trade_id: 1)
    Service.create(title: 'Maintenance', trade_id: 1)
    Service.create(title: 'New Homes', trade_id: 1)
    Service.create(title: 'Heritage Work', trade_id: 1)
    Service.create(title: 'Additions and Extension', trade_id: 2)
    Service.create(title: 'Renovations', trade_id: 2)
    Service.create(title: 'Commercial Projects', trade_id: 2)
    Service.create(title: 'Maintenance', trade_id: 2)
    Service.create(title: 'Kitchens', trade_id: 2)
    Service.create(title: 'Bathrooms', trade_id: 2)
    Service.create(title: 'Home And Units', trade_id: 2)
    Service.create(title: 'Decks, Pergolas & Patio', trade_id: 2)
    Service.create(title: 'Ground Floor Additions and Extensions', trade_id: 2)
    Service.create(title: 'First Floor Additions and Extensions', trade_id: 2)
    Service.create(title: 'Carports & Garages', trade_id: 2)
    Service.create(title: 'Granny Flats', trade_id: 2)
    Service.create(title: 'Decks & Pergola', trade_id: 2)
    Service.create(title: 'Office Fitouts', trade_id: 2)
    Service.create(title: 'Shop Fitouts', trade_id: 2)
    Service.create(title: 'Renovations & Refurbishments', trade_id: 2)
    Service.create(title: 'Real Estate Property Maintenance', trade_id: 2)
    Service.create(title: 'Body Corporate', trade_id: 2)
    Service.create(title: 'Scheduled Maintenance Programs', trade_id: 2)
    Service.create(title: 'Reactive On-Call Maintenance', trade_id: 2)
    Service.create(title: 'Building Inspections', trade_id: 2)
    Service.create(title: 'Insurance Restoration & Repair', trade_id: 2)
    Service.create(title: 'Renovations and Extensions', trade_id: 2)
    Service.create(title: 'Planning', trade_id: 2)
    Service.create(title: 'Design', trade_id: 2)
    Service.create(title: 'Construction', trade_id: 2)
    Service.create(title: 'Trade Management', trade_id: 2)
    Service.create(title: 'Full building services', trade_id: 2)
    Service.create(title: 'Architect and Design Services', trade_id: 2)
    Service.create(title: 'Custom Cabinetry Designs', trade_id: 3)
    Service.create(title: 'Custom Kitchen Designs', trade_id: 3)
    Service.create(title: 'Counters', trade_id: 3)
    Service.create(title: 'Bathrooms', trade_id: 3)
    Service.create(title: 'Laundries', trade_id: 3)
    Service.create(title: 'Residential kitchens', trade_id: 3)
    Service.create(title: 'Outdoor Kitchens', trade_id: 3)
    Service.create(title: 'Commercial Cabinetry', trade_id: 3)
    Service.create(title: 'Specialized cabinetry', trade_id: 3)
    Service.create(title: 'Renovations', trade_id: 3)
    Service.create(title: 'Office Fit Out', trade_id: 3)
    Service.create(title: 'Design', trade_id: 3)
    Service.create(title: 'Stick frame construction of frames', trade_id: 4)
    Service.create(title: 'Custom build on site of exposed trusses', trade_id: 4)
    Service.create(title: 'Joist construction', trade_id: 4)
    Service.create(title: 'Installation of windows', trade_id: 4)
    Service.create(title: 'Installation of roof structure', trade_id: 4)
    Service.create(title: 'Lineal board cladding', trade_id: 4)
    Service.create(title: 'Construction of decks', trade_id: 4)
    Service.create(title: 'Iron roofing and gutters', trade_id: 4)
    Service.create(title: 'External wall linings inc. blue board', trade_id: 4)
    Service.create(title: 'Iron cladding', trade_id: 4)
    Service.create(title: 'Renovations', trade_id: 4)
    Service.create(title: 'Decks & Pergola', trade_id: 4)
    Service.create(title: 'Granny Flats', trade_id: 4)
    Service.create(title: 'Shop Fitouts', trade_id: 4)
    Service.create(title: 'Renovations & Refurbishments', trade_id: 4)
    Service.create(title: 'Extensions', trade_id: 4)
    Service.create(title: 'Repairs', trade_id: 4)
    Service.create(title: 'Carpet Installation', trade_id: 5)
    Service.create(title: 'Carpet Repairs', trade_id: 5)
    Service.create(title: 'Timber floor needs', trade_id: 5)
    Service.create(title: 'Vinyl Floors', trade_id: 5)
    Service.create(title: 'Laminate Flooring', trade_id: 5)
    Service.create(title: 'Underlay Repair/Replacement', trade_id: 5)
    Service.create(title: 'LAN, WAN and VPN data solutions', trade_id: 6)
    Service.create(title: 'Safety inspections and reports', trade_id: 6)
    Service.create(title: 'Testing and tagging of electrical appliances', trade_id: 6)
    Service.create(title: 'Data cabling', trade_id: 6)
    Service.create(title: 'Phone & TV Points', trade_id: 6)
    Service.create(title: 'Rewiring', trade_id: 6)
    Service.create(title: 'Home Renovations', trade_id: 6)
    Service.create(title: 'New builds', trade_id: 6)
    Service.create(title: 'Powerpoints', trade_id: 6)
    Service.create(title: 'Light fittings and Installation', trade_id: 6)
    Service.create(title: 'Ceiling fans', trade_id: 6)
    Service.create(title: 'Hot water repairs', trade_id: 6)
    Service.create(title: 'Smoke alarm installation, inspection and certification', trade_id: 6)
    Service.create(title: 'Safety switches', trade_id: 6)
    Service.create(title: 'Phone points', trade_id: 6)
    Service.create(title: 'Data, Cat 5e and Cat 6 structured cabling systems', trade_id: 6)
    Service.create(title: 'Airconditioning', trade_id: 6)
    Service.create(title: 'Heating', trade_id: 6)
    Service.create(title: 'Reverse Cycle System Installation', trade_id: 6)
    Service.create(title: 'Backup power', trade_id: 6)
    Service.create(title: 'Ceiling fan installation', trade_id: 6)
    Service.create(title: 'Circuit breaker replacement', trade_id: 6)
    Service.create(title: 'Code compliance', trade_id: 6)
    Service.create(title: 'Computer wiring', trade_id: 6)
    Service.create(title: 'Electric and Breaker Panel Upgrades', trade_id: 6)
    Service.create(title: 'Electric heat, ranges & dryer installation', trade_id: 6)
    Service.create(title: 'Energy saving lighting solutions', trade_id: 6)
    Service.create(title: 'Exhaust fan installation', trade_id: 6)
    Service.create(title: 'Generator installation, service, repair and maintenance', trade_id: 6)
    Service.create(title: 'High efficiency lighting', trade_id: 6)
    Service.create(title: 'Holiday lighting', trade_id: 6)
    Service.create(title: 'Indoor lighting, outlets, and switches', trade_id: 6)
    Service.create(title: 'Intercom systems', trade_id: 6)
    Service.create(title: 'Internet wiring', trade_id: 6)
    Service.create(title: 'Kitchen lighting and range installation', trade_id: 6)
    Service.create(title: 'Lamp post wiring', trade_id: 6)
    Service.create(title: 'Landscape lighting', trade_id: 6)
    Service.create(title: 'Lighting controls', trade_id: 6)
    Service.create(title: 'Motion Sensors', trade_id: 6)
    Service.create(title: 'Outlet, switch and home lighting installation', trade_id: 6)
    Service.create(title: 'Outdoor lighting, outlets, switches', trade_id: 6)
    Service.create(title: 'Pool, spa or hot tub wiring', trade_id: 6)
    Service.create(title: 'Recessed lighting', trade_id: 6)
    Service.create(title: 'Service Panel Upgrades', trade_id: 6)
    Service.create(title: 'Smoke/CO detectors', trade_id: 6)
    Service.create(title: 'Underground wiring', trade_id: 6)
    Service.create(title: 'Whole home surge protection', trade_id: 6)
    Service.create(title: 'Wiring upgrades', trade_id: 6)
    Service.create(title: 'Spring & Fall Clean-Ups', trade_id: 7)
    Service.create(title: 'Garden Maintenance', trade_id: 7)
    Service.create(title: 'Garden design', trade_id: 7)
    Service.create(title: 'Lawn maintenance, trimming, blowing', trade_id: 7)
    Service.create(title: 'Organic garden fertilizing', trade_id: 7)
    Service.create(title: 'Pest Control', trade_id: 7)
    Service.create(title: 'Sodding, seeding, top dressing, lawn dethatching, grading', trade_id: 7)
    Service.create(title: 'Tree trimming and removal', trade_id: 7)
    Service.create(title: 'Hedge and shrub pruning', trade_id: 7)
    Service.create(title: 'Watering while you are away', trade_id: 7)
    Service.create(title: 'Disposal services (brush and clean fill)', trade_id: 7)
    Service.create(title: 'Garden Consultation', trade_id: 7)
    Service.create(title: 'Fixed Price Servicing', trade_id: 8)
    Service.create(title: 'Electronic Tuning', trade_id: 8)
    Service.create(title: 'Automatic Transmission And Manual Transmission Servicing', trade_id: 8)
    Service.create(title: 'Efi Service And Repairs', trade_id: 8)
    Service.create(title: 'Fuel Injection Cleaning', trade_id: 8)
    Service.create(title: 'Brake & Clutch Replacement & Repairs', trade_id: 8)
    Service.create(title: 'Computerised Diagnostics', trade_id: 8)
    Service.create(title: 'Air Conditioning Regas & Repair', trade_id: 8)
    Service.create(title: 'Disc Machining', trade_id: 8)
    Service.create(title: 'Windscreen Replacements', trade_id: 8)
    Service.create(title: 'Tyre Fitting', trade_id: 8)
    Service.create(title: 'Wheel Alignments', trade_id: 8)
    Service.create(title: 'Wheel Balancing', trade_id: 8)
    Service.create(title: 'Dealer Logbook Services', trade_id: 8)
    Service.create(title: 'New Tyres and Repairs', trade_id: 8)
    Service.create(title: 'Pre Purchase Inspections', trade_id: 8)
    Service.create(title: 'Authorised Roadworthy Tester', trade_id: 8)
    Service.create(title: 'Car Battery Replacement', trade_id: 8)
    Service.create(title: 'Auto Electrical Services', trade_id: 8)
    Service.create(title: 'Roadworthy Certificate Inspections', trade_id: 8)
    Service.create(title: 'Lpg Servicing', trade_id: 8)
    Service.create(title: 'Exterior Painting', trade_id: 9)
    Service.create(title: 'Interior Painting', trade_id: 9)
    Service.create(title: 'Timber and Decking', trade_id: 9)
    Service.create(title: 'New Paint Jobs', trade_id: 9)
    Service.create(title: 'Roof and Gutters', trade_id: 9)
    Service.create(title: 'Wallpaper Removal', trade_id: 9)
    Service.create(title: 'Cabinet Painting', trade_id: 9)
    Service.create(title: 'Deck Painting', trade_id: 9)
    Service.create(title: 'Fence Painting', trade_id: 9)
    Service.create(title: 'Drywall Repair', trade_id: 9)
    Service.create(title: 'Pest Control', trade_id: 10)
    Service.create(title: 'Termite Treatment', trade_id: 10)
    Service.create(title: 'Carpet Cleaning', trade_id: 10)
    Service.create(title: 'Pest Management', trade_id: 10)
    Service.create(title: 'Reports', trade_id: 10)
    Service.create(title: 'Building Inspections', trade_id: 10)
    Service.create(title: 'Pre Purchase Inspections', trade_id: 10)
    Service.create(title: 'Timber Pests', trade_id: 10)
    Service.create(title: 'General Pests', trade_id: 10)

    
    redirect_to new_site_path
  end

  def create_temp_site
    @custom = TemplateCustom.new(
      header_1_subtxt: "CARPENTRY AND MAINTENANCE SERVICES",
      header_1_primarytxt: "ALL YOUR GENERAL CARPENTRY NEEDS!",
      header_1_btntxt: "VIEW OUR SERVICES",
      quotebar_1_subtxt: "GET IN TOUCH TODAY",
      quote_bar_primarytxt: "FOR YOUR FREE – NO OBLIGATION QUOTE",
      quote_bar_btntxt: "REQUEST A QUOTE",
      content_6col_righttxt: "<p>Our owner builder assist services will give you the knowledge and skill of a professional carpenter onsite with you from the start to completion.</p> <p>We have the license to build so you have the security and peace of mind that it’s built to the highest standard from the start. We are here to help you.</p>",
      content_6col_rightsubtxt: "DON'T SETTLE FOR LESS",
      content_6col_rightprimarytxt: "Get the right assistance from the start on your next project.",
      content_6col_lefttxt: "<p>Create a home you love that fits your lifestyle If you’re looking to give your home a makeover or simply to change its layout or design, you’ve come to the right place.</p><p>At Dean Carpentry and Maintenance, we’ve developed a reputation across the Gold Coast since we started back in 1998 for our renovations, bringing life and character into your home.</p><p>Working with our clients listening to their needs has been the key, providing customised solutions to meet any project requirements. We also take pride in keeping projects on time and on budget while maintaining our highest level of quality – making the process enjoyable and stress-free for our clients.</p>",
      content_6col_leftsubtxt: "CARPENTRY SERVICES",
      content_6col_leftprimarytxt: "Renovation Built Exactly To Your Needs",
      quotebox_1_subtxt: "REQUEST A QUOTE",
      quotebox_1_primarytxt: "GET IN TOUCH FOR A FREE CONSULTATION",
      quotebox_1_btntxt: "REQUEST A QUOTE",
      services_1_primarytxt: "OUR SERVICES",
      about_1_subtxt: "EXCEPTIONAL RESULTS THROUGH EXPERT CRAFTSMANSHIP",
      about_1_primarytxt: "About Us",
      about_1_txt: "<p>The perfect space doesn’t just happen; it is created. Functionality, aesthetics, and longevity form the basis of creating the perfect room – however, these aspects cannot be achieved without the necessary skills and materials.</p><p>Dean Carpentry and Maintenance is a Gold Coast based carpentry and maintenance company with a commitment to delivering high-quality results, Dean understands what it takes to create the ideal space. Backed by experience we take the time to actively listen to our clients before commencing work – ensuring we deliver the desired outcome.</p><p>High-quality finishes, sturdy workmanship and a keen eye for detail are trademarks evident in our projects to date. We love a challenge. From heritage homes to contemporary office blocks, we have the experience necessary to complete a wide range of residential and commercial projects. With an expert labor hire team on offer, we have become the preferred choice of local builders, construction companies and property managers who require carpenters that they can rely on.</p>",
      )
    @custom.save

    @site = Site.new(
      company_name: session[:company],
      template_name: session[:template_name],
      home_town: "Sydney",
      phone: "0400 000 000",
      user_id: current_user.id
      )

    @site.save

    @color = Color.new(
      color_1: "#bf0101"
      )
    @color.save

    @profile = PersonalProfile.new(
      full_name: "Your Name",
      role: "CEO"
      )

    @profile.save

    @intro = Intro.new(
      content: "Welcome to our site, here you can find everything you need about #{session[:company]}. As you scroll down the page you'll see all we have to offer including our contact details, service locations and samples of our work. We are eagerly waiting your call so please, don't hesitate to contact us when you're ready."
      )
    @intro.save

    redirect_to site_path(@site, :edit_mode => true)
  end

  # GET /sites
  # GET /sites.json
  def index
    @sites = Site.all
    @site = Site.last
    redirect_to site_path(@site, :edit_mode => "true")
  end

  def income

    @host = request.host
    @host = @host.sub(/^www./,'')
    @found_user = User.where(domain: @host).last
    if  @found_user.present?
      Apartment::Tenant.switch!(@found_user.subdomain)
      @site = Site.last
      redirect_to site_path(@site)
    else
        sites_url(:subdomain => resource.subdomain)
    end

    
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
    @color = Color.last
    @profile = PersonalProfile.last
    @intro = Intro.last
    @additional_services = AdditionalService.all
    @locations = ServiceLocation.all
    @portfolios = Portfolio.all
    @accreditations = AccreditationAndLicence.all
    @reviews = Review.all
    @message = Message.new

    @custom = TemplateCustom.last

    @company = Site.last
    @company_name = @company.company_name

     @progress_bar = 82

     if @intro.logo.attached?
      @progress_bar = @progress_bar + 2
     end
    if @site.featured_image.attached?
      @progress_bar = @progress_bar + 2
     end
     if @additional_services.present?
      @progress_bar = @progress_bar + 2
     end
     if @profile.bio.present?
      @progress_bar = @progress_bar + 2
     end
     if @profile.avatar.attached?
      @progress_bar = @progress_bar + 2
     end
     if @portfolios.present?
      @progress_bar = @progress_bar + 2
     end
     if @reviews.present?
      @progress_bar = @progress_bar + 2
     end
     if @accreditations.present?
      @progress_bar = @progress_bar + 2
     end
     if @site.abn.present?
      @progress_bar = @progress_bar + 2
     end

     @progress_bar = @progress_bar.to_s + "%"
    

  end

  # GET /sites/new
  def new
    

    @existing_site = Site.last
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  # POST /sites.json
  def create
    @site = Site.new(site_params)

    respond_to do |format|
      if @site.save

        #AgileCRMWrapper.configure do |config|
         # config.api_key = 'kcpdal8br1cdm2floo8ct69o5m'
          #config.domain = 'twomin.agilecrm.com'
          #config.email = 'josh@codecabin.com.au'
        #end

        #AgileCRMWrapper::Contact.create(
        #  tags: ["new_lead"],
         # email: current_user.email,
          #initial_password: session[:pkey]
        #)

        format.html { redirect_to site_path(@site), notice: 'Site was successfully created.' }
        format.json { render :show, status: :created, location: @site }
      else
        format.html { render :new }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to @site, notice: 'Site was successfully updated.' }
        format.json { render :show, status: :ok, location: @site }
      else
        format.html { render :edit }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to sites_url, notice: 'Site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:site_name, :company_name, :abn, :home_town, :user_id, :trade_id,:phone, :featured_image, :template_id)
    end
end
