class City < ActiveRecord::Base
  belongs_to :territory
  has_many :addresses
  attr_accessible :name, :territory_id
end
