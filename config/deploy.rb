set :application, "aleyjarri"
set :repository,  "git://github.com/jipumarino/aleyjarri.git"

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :deploy_to, "/var/apps/aleyjarri"

role :web, "panda2"
role :app, "panda2"
role :db,  "panda2", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end