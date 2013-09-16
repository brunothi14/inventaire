class AddSerialToAttachements < ActiveRecord::Migration
  def change
    add_column :attachements, :serial, :string
  end
end
