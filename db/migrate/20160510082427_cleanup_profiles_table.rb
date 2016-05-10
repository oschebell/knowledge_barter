class CleanupProfilesTable < ActiveRecord::Migration
  def change
    remove_column :profiles, :location
    remove_column :profiles, :interested_in
    remove_column :profiles, :current_skills
  end
end
