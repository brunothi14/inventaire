class CreateBaseUseds < ActiveRecord::Migration
  def change
    create_table :base_useds do |t|

      t.timestamps
    end
  end
end
