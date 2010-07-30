set :application, "192.168.0.247"
set :repository,  "ssh://git@192.168.0.245/~/repositories/demanda.git"

set :user, "administrador"
set :use_sudo, false
set :deploy_to, "/home/#{user}/demanda_new_version"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server application, :app, :web, :db, :primary => true

after "deploy:update_code", "deploy:custom_symlinks"
#after "deploy:symlink", "deploy:update_crontab"


 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
   
   task :custom_symlinks do
     run "rm -rf #{release_path}/config/database.yml"
     run "ln -s #{shared_path}/database.yml #{release_path}/config/database.yml"
   end
 end 
 namespace :deploy do
    desc "Update the crontab file"
    task :update_crontab, :roles => :db do
      run "cd #{release_path} && whenever --update-crontab demanda_new_version"
    end
 end



 
