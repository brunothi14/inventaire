class Attachement < ActiveRecord::Base
  attr_accessible :bonus, :description, :emplacement, :marque, :modele, :prix, :stock, :fonction
  
 
  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |attachment|
      csv << attachement.attributes.values_at(*column_names)
    end
  end
end
 
end
