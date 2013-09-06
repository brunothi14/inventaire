class RemoveTableSerie < ActiveRecord::Migration
  def up
     drop_table :series
  end

  def down
  end
end
