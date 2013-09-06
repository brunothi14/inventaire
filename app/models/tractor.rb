class Tractor < ActiveRecord::Base
  belongs_to :status
  belongs_to :location
  
  attr_accessible :description, :fielddate, :hours, :invoice, :model, :serial, :status_id, :location_id
end
