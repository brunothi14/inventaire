class CreateTracteurNeufs < ActiveRecord::Migration
  def change
    create_table :tracteur_neufs do |t|
      t.string :emplacement
      t.string :stock
      t.string :famille
      t.string :modele
      t.string :description
      t.decimal :prix
      t.decimal :bonus
      t.date :arrivee
      t.integer :facture

      t.timestamps
    end
  end
end
