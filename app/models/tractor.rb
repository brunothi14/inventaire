class Tractor < ActiveRecord::Base
  belongs_to :serie
  belongs_to :family
  
  attr_accessible :description, :fielddate, :hours, :invdate, :invoice, :model, :serial, :serie_id
end
