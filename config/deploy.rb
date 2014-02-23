require "rvm/capistrano"
require "bundler/capistrano"

set :rvm_type, :system
set :application, "mikedoyleweb.com"
set :repository,  "https://github.com/mdoyle13/mikedoyleweb3.2.git"
set :deploy_to, "/var/www/mikedoyleweb.com"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_via, :remote_cache
set :user, "root"

role :web, "107.170.41.245"                          # Your HTTP server, Apache/etc
role :app, "107.170.41.245"                          # This may be the same as your `Web` server
role :db,  "107.170.41.245", :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

#If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  desc "Symlink shared configs and folders on each release."
   task :symlink_shared do
     run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
     run "ln -nfs #{shared_path}/uploads  #{release_path}/public/uploads"
   end
end

before 'bundle:install', 'deploy:symlink_shared'
