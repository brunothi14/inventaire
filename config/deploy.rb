require 'capistrano/ext/multistage'

set :application, "inventaire"
set :scm, "git"
#set :repository, "git://github.com/brunothi14/inventaire.git"  # Your clone URL
set :repository, "git@github.com:brunothi14/inventaire.git"
set :deploy_via, :remote_cache
set :scm_passphrase, ""
#set :repository,  "set your repository location here"

set :stages, ["staging", "production"]
set :default_stage, "staging"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

ssh_options[:port] = 2222

role :web, "extra.centrekubota.ca"                          # Your HTTP server, Apache/etc
role :app, "extra.centrekubota.ca"                          # This may be the same as your `Web` server
role :db,  "extra.centrekubota.ca", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work

set :user, "root"  # The server's user for deploys
set :use_sudo, false



# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
 
namespace :gems do
  task :install do
    run "cd #{deploy_to}/current && RAILS_ENV=production rake gems:install"
  end
end

after :deploy, "gems:install"
after "gems:install", "deploy:migrate"