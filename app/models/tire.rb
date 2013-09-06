class Tire < ActiveRecord::Base
    has_many :tractors
   attr_accessible :model, :dimension
end
