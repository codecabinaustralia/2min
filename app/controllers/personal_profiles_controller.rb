class PersonalProfilesController < ApplicationController
  before_action :set_personal_profile, only: [:show, :edit, :update, :destroy]

  # GET /personal_profiles
  # GET /personal_profiles.json
  def index
    @personal_profiles = PersonalProfile.all
  end

  # GET /personal_profiles/1
  # GET /personal_profiles/1.json
  def show
  end

  # GET /personal_profiles/new
  def new
    @personal_profile = PersonalProfile.new
  end

  # GET /personal_profiles/1/edit
  def edit
  end

  # POST /personal_profiles
  # POST /personal_profiles.json
  def create
    @personal_profile = PersonalProfile.new(personal_profile_params)
    @site = Site.last
    respond_to do |format|
      if @personal_profile.save
        format.html { redirect_to site_path(@site, :edit_mode => "true"), notice: 'Personal profile was successfully created.' }
        format.json { render :show, status: :created, location: @personal_profile }
      else
        format.html { render :new }
        format.json { render json: @personal_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_profiles/1
  # PATCH/PUT /personal_profiles/1.json
  def update
    @site = Site.last
    respond_to do |format|
      if @personal_profile.update(personal_profile_params)
        format.html { redirect_to site_path(@site, :edit_mode => "true"), notice: 'Personal profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_profile }
      else
        format.html { render :edit }
        format.json { render json: @personal_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_profiles/1
  # DELETE /personal_profiles/1.json
  def destroy
    @personal_profile.destroy
    respond_to do |format|
      format.html { redirect_to personal_profiles_url, notice: 'Personal profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_profile
      @personal_profile = PersonalProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_profile_params
      params.require(:personal_profile).permit(:full_name, :bio, :avatar, :role)
    end
end
