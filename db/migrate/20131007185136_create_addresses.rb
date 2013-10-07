class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :number
      t.string :unit
      t.string :street
      t.string :pcode
      t.integer :city_id

      t.timestamps
    end
  end
end
