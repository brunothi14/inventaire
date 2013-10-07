class Address < ActiveRecord::Base
  belongs_to :city
  attr_accessible :city_id, :number, :pcode, :street, :unit
end
