class UsedOther < ActiveRecord::Base
  belongs_to :location
  belongs_to :family
  belongs_to :status
  attr_accessible :status_id, :bonus, :cost, :brand, :description, :fielddate, :hours, :location_id, :lsp, :model, :price, :serial, :stock, :year
end
