class RentalFleet < ActiveRecord::Base
  attr_accessible :client, :dateout, :bonus, :hours, :location, :model, :salesman, :serial, :description
end
