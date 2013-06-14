class ChangerColonneTypeAttachement < ActiveRecord::Migration
  def up
     rename_column :attachements, :type, :fonction
  end

  def down
    rename_column :attachements, :fonction, :type
  end
end
