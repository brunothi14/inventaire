class AddAttachmentPhotoToTracteurNeufs < ActiveRecord::Migration
  def self.up
    change_table :tracteur_neufs do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :tracteur_neufs, :photo
  end
end
