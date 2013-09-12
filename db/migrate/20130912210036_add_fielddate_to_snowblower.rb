class AddFielddateToSnowblower < ActiveRecord::Migration
  def change
    add_column :snowblowers, :fielddate, :date
  end
end
