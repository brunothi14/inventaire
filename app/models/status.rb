class Status < ActiveRecord::Base
  has_many :tractors
  has_many :snowblowers
  attr_accessible :stat
end
