class Profile < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :current_skills, class_name: "Skill", join_table: "profiles_current_skills"
  has_and_belongs_to_many :interested_skills, class_name: "Skill", join_table: "profiles_interested_skills"
  belongs_to :location

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


#.joins(:skill).where('current_skills' => :current_skills_id)

end
