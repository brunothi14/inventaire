class AddCostToUsedAccessories < ActiveRecord::Migration
  def change
    add_column :used_accessories, :cost, :decimal
  end
end
