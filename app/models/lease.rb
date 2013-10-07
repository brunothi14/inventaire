class Lease < ActiveRecord::Base
  has_one :client
  # attr_accessible :title, :body
end
