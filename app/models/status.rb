class Status < ActiveRecord::Base
  has_many :tractors
  has_many :snowblowers
  has_many :useds
  has_many :used_others
  has_many :used_accessories
  attr_accessible :stat
end
