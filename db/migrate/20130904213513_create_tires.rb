class CreateTires < ActiveRecord::Migration
  def change
    create_table :tires do |t|
      t.string :model
      t.string :dimension
      t.timestamps
    end
  end
end
