class AddLocationIdToTractor < ActiveRecord::Migration
  def change
    add_column :tractors, :location_id, :integer
  end
end
