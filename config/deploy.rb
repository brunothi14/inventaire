require 'bundler/capistrano'
require 'capistrano/ext/multistage'

#set :stages, %w(production staging)
#set :default_stage, "staging"
 


# Base
set :user, "root"  # The server's user for deploys
set :domain, 'extra.centrekubota.ca'
set :application, "inventaire"
set :applicationdir, '/var/www/rails/inventaire'

# Git config
set :scm, "git"
set :repository,  "git://github.com/brunothi14/inventaire.git"
set :branch, "master"

# Production nodes 
role :web, "extra.centrekubota.ca"
role :app, "extra.centrekubota.ca"
role :db,  "extra.centrekubota.ca", :primary => true

# Deploy options
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
 
 
  desc "Load production data into development database"
  task :import_remote_db do
   
    filename = "dump.#{Time.now.strftime '%Y-%m-%d_%H:%M:%S'}.sql"
    dbuser = "root"
    dbhost = "extra.centrekubota.ca"
    dbpassword = "mqlkub123"
    application_db = "inventaire"
    local_db_host = "localhost"
    local_db_user = "root"
    local_db_password = "local_password"
    local_db = "localdatabasename"
     
     
    on_rollback do
    delete "/tmp/#{filename}"
    delete "/tmp/#{filename}.gz"
    end
     
    cmd = "mysqldump --opt --compress -u #{dbuser} --password=#{dbpassword} --host=#{dbhost} #{application_db} > /tmp/#{filename}"
    puts "Dumping remote database"
    run(cmd) do |channel, stream, data|
    puts data
    end
     
    # compress the file on the server
    puts "Compressing remote data"
    run "gzip -9 /tmp/#{filename}"
    puts "Fetching remote data"
    get "/tmp/#{filename}.gz", "dump.sql.gz"
     
    # build the import command
    # no --password= needed if password is nil.
    if local_db_password.nil?
    cmd = "mysql -u #{local_db_user} #{local_db} < dump.sql"
    else
    cmd = "mysql -u #{local_db_user} --password=#{local_db_password} #{local_db} < dump.sql"
    end
     
    # unzip the file. Can't use exec() for some reason so backticks will do
    puts "Uncompressing dump"
    `gzip -d dump.sql.gz`
    puts "Executing : #{cmd}"
    `#{cmd}`
    puts "Cleaning up"
    `rm -f dump.sql`
   
  end

