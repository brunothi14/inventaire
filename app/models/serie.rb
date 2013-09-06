class Serie < ActiveRecord::Base
  has_many :tractors
  
  attr_accessible :name
end
