class Snowblower < ActiveRecord::Base
  belongs_to :status
  belongs_to :location
  
  attr_accessible :bonus, :brand, :color, :description, :model, :price, :serial, :stock
end
