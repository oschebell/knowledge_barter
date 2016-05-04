class AddLocationIdToProfiles < ActiveRecord::Migration
  def change
    add_reference :profiles, :location, index: true, foreign_key: true
  end
end
