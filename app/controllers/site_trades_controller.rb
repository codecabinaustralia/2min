class SiteTradesController < ApplicationController
  before_action :set_site_trade, only: [:show, :edit, :update, :destroy]

  # GET /site_trades
  # GET /site_trades.json
  def index
    @site_trades = SiteTrade.all
  end

  # GET /site_trades/1
  # GET /site_trades/1.json
  def show
  end

  # GET /site_trades/new
  def new
    @site_trade = SiteTrade.new
  end

  # GET /site_trades/1/edit
  def edit
  end

  # POST /site_trades
  # POST /site_trades.json
  def create
    @site_trade = SiteTrade.new(site_trade_params)

    respond_to do |format|
      if @site_trade.save
        format.html { redirect_to @site_trade, notice: 'Site trade was successfully created.' }
        format.json { render :show, status: :created, location: @site_trade }
      else
        format.html { render :new }
        format.json { render json: @site_trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_trades/1
  # PATCH/PUT /site_trades/1.json
  def update
    respond_to do |format|
      if @site_trade.update(site_trade_params)
        format.html { redirect_to @site_trade, notice: 'Site trade was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_trade }
      else
        format.html { render :edit }
        format.json { render json: @site_trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_trades/1
  # DELETE /site_trades/1.json
  def destroy
    @site_trade.destroy
    respond_to do |format|
      format.html { redirect_to site_trades_url, notice: 'Site trade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_trade
      @site_trade = SiteTrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_trade_params
      params.require(:site_trade).permit(:site_id, :trade_id)
    end
end
