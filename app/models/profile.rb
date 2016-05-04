class Profile < ActiveRecord::Base
  has_and_belongs_to_many :current_skills, class_name: "Skill"
end
