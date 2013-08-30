require 'bundler/capistrano'

# Base
set :user, "root"  # The server's user for deploys
set :domain, 'extra.centrekubota.ca'
set :application, "inventaire"
set :applicationdir, '/var/www/rails/inventaire'

#Git config
set :scm, "git"
set :repository,  "git://github.com/brunothi14/inventaire.git"
set :branch, "master"

# Production nodes 
  role :web, "extra.centrekubota.ca"
  role :app, "extra.centrekubota.ca"
  role :db,  "extra.centrekubota.ca", :primary => true

  #Deploy options
set :deploy_to, applicationdir
set :deploy_via, :remote_cache

# Options SSH
ssh_options[:port] = 2222
set :use_sudo, false

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`



# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end

 namespace :bundle do
  desc "run bundle install and ensure all gem requirements are met"
  task :install do
    run "cd #{current_path} && bundle install"
  end
  
  desc "precompile all file just like production should"
  task :precompile do
	run "cd #{current_path} && bundle exec rake assets:precompile"
  end

end

before "deploy:restart", "bundle:install"
after "bundle:install", "bundle:precompile"

#role :web, "test-extra.centrekubota.ca"                          # Your HTTP server, Apache/etc
#role :app, "test-extra.centrekubota.ca"                          # This may be the same as your `Web` server
#role :db,  "test-extra.centrekubota.ca", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts