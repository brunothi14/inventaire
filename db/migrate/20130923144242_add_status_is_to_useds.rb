class AddStatusIsToUseds < ActiveRecord::Migration
  def change
    add_column :useds, :status_id, :integer
  end
end
