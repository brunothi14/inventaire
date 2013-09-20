class AddFamilyIdToUsedOthers < ActiveRecord::Migration
  def change
    add_column :used_others, :family_id, :integer
  end
end
