class AddStatusIdToUsedAccessories < ActiveRecord::Migration
  def change
    add_column :used_accessories, :status_id, :integer
  end
end
