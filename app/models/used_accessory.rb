class UsedAccessory < ActiveRecord::Base
  belongs_to :location
  belongs_to :family
  attr_accessible :bonus, :brand, :description, :fielddate, :location_id, :lsp, :model, :price, :serial, :stock, :year
end
