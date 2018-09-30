class TemplateCustomsController < ApplicationController
  before_action :set_template_custom, only: [:show, :edit, :update, :destroy]

  # GET /template_customs
  # GET /template_customs.json
  def index
    @template_customs = TemplateCustom.all
  end

  # GET /template_customs/1
  # GET /template_customs/1.json
  def show
  end

  # GET /template_customs/new
  def new
    @template_custom = TemplateCustom.new
  end

  # GET /template_customs/1/edit
  def edit
  end

  # POST /template_customs
  # POST /template_customs.json
  def create
    @template_custom = TemplateCustom.new(template_custom_params)

    @template_custom.header_1_img.attach(template_custom_params[:header_1_img])
    @template_custom.content_6col_leftimg1.attach(template_custom_params[:content_6col_leftimg1])
    @template_custom.content_6col_leftimg2.attach(template_custom_params[:content_6col_leftimg2])
    @template_custom.content_6col_rightimg1.attach(template_custom_params[:content_6col_rightimg1])
    @template_custom.content_6col_rightimg2.attach(template_custom_params[:content_6col_rightimg2])
    @template_custom.services_1_hero.attach(template_custom_params[:services_1_hero])
    @template_custom.about_1_img1.attach(template_custom_params[:about_1_img1])
    @template_custom.about_1_img2.attach(template_custom_params[:about_1_img2])
    @template_custom.about_1_img3.attach(template_custom_params[:about_1_img3])

    respond_to do |format|
      if @template_custom.save
        format.html { redirect_to @template_custom, notice: 'Template custom was successfully created.' }
        format.json { render :show, status: :created, location: @template_custom }
      else
        format.html { render :new }
        format.json { render json: @template_custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_customs/1
  # PATCH/PUT /template_customs/1.json
  def update
    @site = Site.last

    respond_to do |format|
      if @template_custom.update(template_custom_params)
        format.html { redirect_to site_path(@site, :edit_mode => true), notice: 'Template custom was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_custom }
      else
        format.html { render :edit }
        format.json { render json: @template_custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_customs/1
  # DELETE /template_customs/1.json
  def destroy
    @template_custom.destroy
    respond_to do |format|
      format.html { redirect_to template_customs_url, notice: 'Template custom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_custom
      @template_custom = TemplateCustom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_custom_params
      params.require(:template_custom).permit(:custom_css, :header_1_img, :header_1_overlay_color, :header_1_subtxt, :header_1_primarytxt, :header_1_btntxt, :quotebar_1_subtxt, :quote_bar_primarytxt, :quote_bar_btntxt, :content_6col_leftimg1, :content_6col_leftimg2, :content_6col_righttxt, :content_6col_rightsubtxt, :content_6col_rightprimarytxt, :content_6col_rightimg1, :content_6col_rightimg2, :content_6col_lefttxt, :content_6col_leftsubtxt, :content_6col_leftprimarytxt, :quotebox_1_subtxt, :quotebox_1_primarytxt, :quotebox_1_btntxt, :services_1_primarytxt, :services_1_hero, :about_1_img1, :about_1_img2, :about_1_img3, :about_1_subtxt, :about_1_primarytxt, :about_1_txt)
    end
end
