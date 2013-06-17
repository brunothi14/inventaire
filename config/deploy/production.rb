server "extra.centrekubota.ca", :app, :web, :db, :primary => true
set :deploy_to, "/var/www/rails/inventaire"
set :branch, 'stable'