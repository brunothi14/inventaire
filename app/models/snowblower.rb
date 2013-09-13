class Snowblower < ActiveRecord::Base
  belongs_to :status
  belongs_to :location
  belongs_to :tractor
  
  attr_accessible :bonus, :brand, :color, :description, :model, :price, :serial, :stock, :location_id, :status_id, :fielddate


  def remainingdays
    _days = (self.fielddate - Date.today).to_i + 365    
    return _days > 0 ? _days : 0
  end

end
