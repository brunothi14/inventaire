class CreateAttachements < ActiveRecord::Migration
  def change
    create_table :attachements do |t|
      t.string :type
      t.string :emplacement
      t.string :stock
      t.string :marque
      t.string :modele
      t.string :description
      t.decimal :prix
      t.decimal :bonus

      t.timestamps
    end
  end
end
