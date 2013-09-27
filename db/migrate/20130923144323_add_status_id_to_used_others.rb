class AddStatusIdToUsedOthers < ActiveRecord::Migration
  def change
    add_column :used_others, :status_id, :integer
  end
end
