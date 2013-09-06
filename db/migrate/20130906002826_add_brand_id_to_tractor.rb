class AddBrandIdToTractor < ActiveRecord::Migration
  def change
    add_column :tractors, :brand_id, :integer
  end
end
