class AddFamilyIdToTractor < ActiveRecord::Migration
  def change
    add_column :tractors, :family_id, :integer
  end
end
