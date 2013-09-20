class AddCostToUsedOthers < ActiveRecord::Migration
  def change
    add_column :used_others, :cost, :decimal
  end
end
