class CreateTractors < ActiveRecord::Migration
  def change
    create_table :tractors do |t|
      t.string :model
      t.string :serial
      t.integer :hours
      t.integer :invoice
      t.date :invdate
      t.date :fielddate
      t.text :description
      t.boolean :used

      t.timestamps
    end
  end
end
