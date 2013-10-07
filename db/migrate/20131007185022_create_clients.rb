class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :tel1
      t.integer :tel2
      t.integer :address_id

      t.timestamps
    end
  end
end
