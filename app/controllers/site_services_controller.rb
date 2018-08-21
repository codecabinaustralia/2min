class SiteServicesController < ApplicationController
  before_action :set_site_service, only: [:show, :edit, :update, :destroy]

  # GET /site_services
  # GET /site_services.json
  def index
    @site_services = SiteService.all
  end

  # GET /site_services/1
  # GET /site_services/1.json
  def show
  end

  # GET /site_services/new
  def new
    @site_service = SiteService.new
    @my_site = Site.last
    @trade_services = Service.where(trade_id: @my_site.trade_id).all
  end

  # GET /site_services/1/edit
  def edit
  end

  # POST /site_services
  # POST /site_services.json
  def create

    @services = Service.where(id: params[:service_ids])

    @services.map do |service|
      @new_service = SiteService.new(
        service_id: service.id,
        site_id: params[:site_id]
        )

      @new_service.save!
    end
    redirect_to new_additional_service_path
  end

  # PATCH/PUT /site_services/1
  # PATCH/PUT /site_services/1.json
  def update
    respond_to do |format|
      if @site_service.update(site_service_params)
        format.html { redirect_to @site_service, notice: 'Site service was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_service }
      else
        format.html { render :edit }
        format.json { render json: @site_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_services/1
  # DELETE /site_services/1.json
  def destroy
    @site_service.destroy
    respond_to do |format|
      format.html { redirect_to site_services_url, notice: 'Site service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_service
      @site_service = SiteService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_service_params
      params.require(:site_service).permit(:site_id, :service_id)
    end
end
