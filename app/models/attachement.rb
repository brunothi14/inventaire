class Attachement < ActiveRecord::Base
  attr_accessible :fonction, :emplacement, :stock, :marque, :modele, :description, :prix, :bonus, :serial, :fielddate, :age
  belongs_to :tractor
 
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |attachment|
        csv << attachement.attributes.values_at(*column_names)
      end
    end
  end
 
  def age
    return self.fielddate ? (Date.today - self.fielddate).to_i : -1
  end
  
  
  
end
