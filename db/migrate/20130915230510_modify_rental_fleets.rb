class ModifyRentalFleets < ActiveRecord::Migration
  def up
    remove_column :rental_fleets, :datereturn
    remove_column :rental_fleet2s, :datereturn
    
    add_column :rental_fleets, :bonus, :integer, default: 0
    add_column :rental_fleet2s, :bonus, :integer, default: 0
    
    add_column :rental_fleets, :description, :text
    add_column :rental_fleet2s, :description, :text
  end

  def down
    add_column :rental_fleets, :datereturn
    add_column :rental_fleet2s, :datereturn
    
    remove_column :rental_fleets, :bonus
    remove_column :rental_fleet2s, :bonus
    
    remove_column :rental_fleets, :description
    remove_column :rental_fleet2s, :descriptionS
  end
end
