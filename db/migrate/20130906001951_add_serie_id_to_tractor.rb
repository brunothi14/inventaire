class AddSerieIdToTractor < ActiveRecord::Migration
  def change
    add_column :tractors, :serie_id, :integer
  end
end
