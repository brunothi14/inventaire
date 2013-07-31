set :application, "inventaire"
set :repository,  "git://github.com/brunothi14/inventaire.git"
set :scm, "git"
set :deploy_via, :remote_cache

set :user, "root"  # The server's user for deploys
ssh_options[:port] = 2222
set :use_sudo, false

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`


desc "Run tasks in production enviroment."
task :production do
	# Prompt to make really sure we want to deploy into prouction
  puts "\n\e[0;31m   ######################################################################" 
  puts "   #\n   #       Are you REALLY sure you want to deploy to production?"
  puts "   #\n   #               Enter y/N + enter to continue\n   #"
  puts "   ######################################################################\e[0m\n" 
  proceed = STDIN.gets[0..0] rescue nil 
  exit unless proceed == 'y' || proceed == 'Y'

  # Production nodes 
  role :app, "extra.centrekubota.ca"
  role :app, "extra.centrekubota.ca"
  role :db,  "extra.centrekubota.ca", :primary => true
  set :deploy_to, "/var/www/rails/inventaire"
  set :branch, "stable"
end 

desc "Run tasks in staging enviroment."
task :staging do
  # Staging nodes 
  role :web, "test-extra.centrekubota.ca"
  role :app, "test-extra.centrekubota.ca"
  role :db,  "test-extra.centrekubota.ca", :primary=>true
  set :deploy_to, "/var/www/rails/inventaire_staging"  
	set :branch, "master"
end

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