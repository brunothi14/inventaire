class CreateSmartsheets < ActiveRecord::Migration
  def change
    create_table :smartsheets do |t|

      t.timestamps
    end
  end
end
