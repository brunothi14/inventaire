class Territory < ActiveRecord::Base
  has_many :cities
  attr_accessible :name
end
