class CreateRentalFleets < ActiveRecord::Migration
  def change
    create_table :rental_fleets do |t|
      t.string :model
      t.string :serial
      t.string :client
      t.string :location
      t.date :dateout
      t.string :salesman
      t.date :datereturn
      t.integer :hours

      t.timestamps
    end
  end
end
