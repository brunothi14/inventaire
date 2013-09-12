class Location < ActiveRecord::Base
  has_many :tractors
  has_many :snowblowers
  attr_accessible :name
end
