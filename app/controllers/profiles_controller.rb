class ProfilesController < ApplicationController
  before_filter :profile_find, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
    if params[:location_id].present?
      @profiles = @profiles.where(:location_id => params[:location_id])
    end

    if params[:skill_id].present?
      @profiles = @profiles.joins(:current_skills).where(:skills => { :id => params[:skill_id]})
    end

    @locations = Location.all
    @skills = Skill.all
  end

  def show
  end

  def edit
    @skills = Skill.all
    @locations = Location.all

  end

  def update
    @profile.update(profile_params)
    redirect_to @profile
  end

  def new
    @profile = Profile.new
    @skills = Skill.all
    @locations = Location.all
  end

  def create
    @profile = Profile.create(profile_params)
    @profile = current_user
    @profile.save
    redirect_to @profile
  end


  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def profile_find
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :description, :location_id, interested_skill_ids:[], current_skill_ids:[])
  end
end
