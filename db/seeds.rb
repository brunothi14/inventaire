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

# Remplissage de la table Location
["LAP", "CKL"].each do |x|
  Location.find_or_create_by_name(x)
end
