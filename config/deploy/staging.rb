server "test-extra.centrekubota.ca", :app, :web, :db, :primary => true
set :deploy_to, "/var/www/rails/inventaire_staging"
set :branch, 'master'
set :rails_env, "staging"