class Used < ActiveRecord::Base
  belongs_to :location
  belongs_to :family
  attr_accessible :bonus, :description, :fielddate, :cost, :hours, :location_id, :lsp, :model, :price, :serial, :stock, :year
end
