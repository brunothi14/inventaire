class Equipement < ActiveRecord::Base
  attr_accessible :arrivee, :bonus, :description, :emplacement, :modele, :prix, :stock
end
