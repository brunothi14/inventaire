class AddFielddataToAttachements < ActiveRecord::Migration
  def change
    add_column :attachements, :fielddate, :date
  end
end
