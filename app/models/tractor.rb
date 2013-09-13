class Tractor < ActiveRecord::Base
  belongs_to :status
  belongs_to :location
  has_many :attachements
  has_one :snowblower
  
  attr_accessible :description, :fielddate, :hours, :invoice, :model, :serial, :price, :bonus, :stock, :status_id, :location_id


  def remainingdays
    _days = (self.fielddate - Date.today).to_i + 365    
    return _days > 0 ? _days : 0
  end




end
