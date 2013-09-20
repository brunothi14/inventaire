class UsedOther < ActiveRecord::Base
  belongs_to :location
  belongs_to :family
  attr_accessible :bonus, :cost, :brand, :description, :fielddate, :hours, :location_id, :lsp, :model, :price, :serial, :stock, :year
end
