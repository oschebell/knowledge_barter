class ProfilesInterestedSkills < ActiveRecord::Migration
  def change
    create_table :profiles_interested_skills, id: false do |t|
      t.integer :profile_id
      t.integer :skill_id
    end
  end
end
