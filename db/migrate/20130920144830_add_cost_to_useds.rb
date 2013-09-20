class AddCostToUseds < ActiveRecord::Migration
  def change
    add_column :useds, :cost, :decimal
  end
end
