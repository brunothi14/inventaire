# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Remplissage de la table Status
["Stock", "Vendu", "Pret", "Demo"].each do |x|
  Status.find_or_create_by_stat(x)
end


# Remplissage de la table Brand
["Kubota", "Merlo"].each do |x|
  Brand.find_or_create_by_name(x)
end


# Remplissage de la table Family
["CONST", "IMPLE", "TRCTR", "TURF"].each do |x|
  Family.find_or_create_by_name(x)
end


# Remplissage de la table Serie
["KX", "R", "SVL", "U", "BACK", "BLADE", "CAB", "CANO", "GRASS", "KITS", "LOAD", "MOW", "SNOW", "SWEEP", "B", "L", "M", "BX", "F", "GF", "GR", "RTV", "T", "Z"].each do |x|
  Serie.find_or_create_by_name(x)
end
