class CreateUsedAccessories < ActiveRecord::Migration
  def change
    create_table :used_accessories do |t|
      t.integer :location_id
      t.string :brand
      t.string :model
      t.integer :year
      t.string :serial
      t.string :stock
      t.date :fielddate
      t.decimal :lsp
      t.decimal :price
      t.decimal :bonus
      t.text :description

      t.timestamps
    end
  end
end
