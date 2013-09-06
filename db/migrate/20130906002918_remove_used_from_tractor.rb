class RemoveUsedFromTractor < ActiveRecord::Migration
  def up
     remove_column :tractors, :used
  end

  def down
    add_column :tractors, :used
  end
end
