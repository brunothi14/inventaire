class Tractor < ActiveRecord::Base
  belongs_to :status
  belongs_to :location
  
  attr_accessible :description, :fielddate, :hours, :invoice, :model, :serial, :price, :bonus, :stock, :status_id, :location_id


  def remainingdays
    return (tractor.fielddate - Date.today).to_i + 365    
  end




end
