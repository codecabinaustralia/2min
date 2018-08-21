class AccreditationAndLicencesController < ApplicationController
  before_action :set_accreditation_and_licence, only: [:show, :edit, :update, :destroy]

  # GET /accreditation_and_licences
  # GET /accreditation_and_licences.json
  def index
    @accreditation_and_licences = AccreditationAndLicence.all
  end

  # GET /accreditation_and_licences/1
  # GET /accreditation_and_licences/1.json
  def show
  end

  # GET /accreditation_and_licences/new
  def new
    @my_licences = AccreditationAndLicence.all
    @my_site = Site.last
    @accreditation_and_licence = AccreditationAndLicence.new
  end

  # GET /accreditation_and_licences/1/edit
  def edit
  end

  # POST /accreditation_and_licences
  # POST /accreditation_and_licences.json
  def create
    @accreditation_and_licence = AccreditationAndLicence.new(accreditation_and_licence_params)

    respond_to do |format|
      if @accreditation_and_licence.save
        format.html { redirect_to new_accreditation_and_licence_path, notice: 'Accreditation and licence was successfully created.' }
        format.json { render :show, status: :created, location: @accreditation_and_licence }
      else
        format.html { render :new }
        format.json { render json: @accreditation_and_licence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accreditation_and_licences/1
  # PATCH/PUT /accreditation_and_licences/1.json
  def update
    respond_to do |format|
      if @accreditation_and_licence.update(accreditation_and_licence_params)
        format.html { redirect_to @accreditation_and_licence, notice: 'Accreditation and licence was successfully updated.' }
        format.json { render :show, status: :ok, location: @accreditation_and_licence }
      else
        format.html { render :edit }
        format.json { render json: @accreditation_and_licence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accreditation_and_licences/1
  # DELETE /accreditation_and_licences/1.json
  def destroy
    @accreditation_and_licence.destroy
    respond_to do |format|
      format.html { redirect_to accreditation_and_licences_url, notice: 'Accreditation and licence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accreditation_and_licence
      @accreditation_and_licence = AccreditationAndLicence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accreditation_and_licence_params
      params.require(:accreditation_and_licence).permit(:name, :reference_number)
    end
end
