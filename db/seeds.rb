# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Remplissage de la table Status
["Stock", "Stock LAP", "Stock CKL", "Stock QUE", "Stock RIM","Vendu", "Pret", "Demo"].each do |x|
  Status.find_or_create_by_stat(x)
end


# Remplissage de la table Brand
["Kubota", "Merlo"].each do |x|
  Brand.find_or_create_by_name(x)
end

# Remplissage de la table Location
["LAP", "CKL", "QUE", "RIM"].each do |x|
  Location.find_or_create_by_name(x)
end

# Remplissage de la table Role
["SuperAdmin", "TractorAdmin", "UsedAdmin", "AttachementAdmin", "ProductAdmin", "User"].each do |x|
  Role.find_or_create_by_name(x)
end
