class RentalFleet2 < ActiveRecord::Base
  attr_accessible :client, :dateout, :datereturn, :hours, :location, :model, :salesman, :serial
end
