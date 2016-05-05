class FixTableName < ActiveRecord::Migration
  def change
    rename_table :profiles_skills, :profiles_current_skills
  end
end
