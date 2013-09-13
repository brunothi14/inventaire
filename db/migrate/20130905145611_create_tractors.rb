class CreateTractors < ActiveRecord::Migration
  def change
    create_table :tractors do |t|
      t.string :model
      t.string :serial
      t.integer :hours
      t.string :stock
      t.integer :invoice
      t.date :fielddate
      t.text :description
      t.decimal :bonus, :precision => 8, :scale => 2
      t.integer :location_id
      t.integer :status_id

      t.timestamps
    end
  end
end
