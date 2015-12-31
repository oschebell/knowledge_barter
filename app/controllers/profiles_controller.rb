class ProfilesController < ApplicationController
  before_filter :profile_find, only: [:show, :edit, :update, :destroy]
    
  def index
    @profiles =Profile.all
  end

  def show
        
  end

  def edit
     
  end

  def update
    @profile.update(profile_params)
    redirect_to @profile
  end

  def new
    @profile = Profile.new  
  end

  def create
    @profile = Profile.create(profile_params)
    @profile.save
    redirect_to @profile
  end


  def destroy
      @profile.destroy
      redirect_to profiles_url
  end

  private

  def profile_find
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :description, :location, :current_skills, :interested_in)  
  end
end

