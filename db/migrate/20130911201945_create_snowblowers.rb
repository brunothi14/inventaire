class CreateSnowblowers < ActiveRecord::Migration
  def change
    create_table :snowblowers do |t|
      t.string :brand
      t.string :model
      t.string :color
      t.string :stock
      t.string :serial
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :bonus, :precision => 8, :scale => 2
      t.integer :location_id
      t.integer :status_id

      t.timestamps
    end
  end
end
