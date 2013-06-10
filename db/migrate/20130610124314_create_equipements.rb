class CreateEquipements < ActiveRecord::Migration
  def change
    create_table :equipements do |t|
      t.string :emplacement
      t.string :stock
      t.string :description
      t.string :modele
      t.decimal :prix
      t.decimal :bonus
      t.date :arrivee

      t.timestamps
    end
  end
end
