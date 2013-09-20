class CreateUsedOthers < ActiveRecord::Migration
  def change
    create_table :used_others do |t|
      t.integer :location_id
      t.string :brand
      t.string :model
      t.integer :year
      t.string :serial
      t.string :stock
      t.integer :hours
      t.date :fielddate
      t.decimal :lsp
      t.decimal :price
      t.decimal :bonus
      t.text :description

      t.timestamps
    end
  end
end
