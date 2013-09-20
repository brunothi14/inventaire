class Family < ActiveRecord::Base
  has_many :useds
  has_many :used_others
  
  attr_accessible :name
end
