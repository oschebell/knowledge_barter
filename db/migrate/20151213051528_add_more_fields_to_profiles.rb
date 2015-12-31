class AddMoreFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :current_skills, :text
    add_column :profiles, :interested_in, :text
  end
end
