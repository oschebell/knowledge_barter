class RegistrationsController < Devise::RegistrationsController
  protected

  def new
    super
    @skills = Skill.all
    @locations = Location.all
  end



  #def after_sign_up_path_for(resource)
  #  new_profile_path # Or :prefix_to_your_route
  #end

#TODO this doesn't redirect to profile show page
  #def after_sign_in_path_for(resource)
  #  profile_path
  #end
end
