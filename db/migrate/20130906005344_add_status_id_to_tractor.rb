class AddStatusIdToTractor < ActiveRecord::Migration
  def change
    add_column :tractors, :status_id, :integer
  end
end
