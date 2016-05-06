class Profile < ActiveRecord::Base
  has_and_belongs_to_many :current_skills, class_name: "Skill", join_table: "profiles_current_skills"
  has_and_belongs_to_many :interested_skills, class_name: "Skill", join_table: "profiles_interested_skills"
  belongs_to :location
end
