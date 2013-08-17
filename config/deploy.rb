require "bundler/capistrano"

server "178.xxx.xxx.xxx", :web, :app, :db

set :application, "blog"
set :user, "deployer"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:eifion/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases

#namespace :deploy do
#  task :restart, roles: :app do
#    run "touch #{current_path}/tmp/restart.txt"
#  end
#  
#  task :symlink_config, roles: :app do
#    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
#  end
#  
#  after "deploy:finalize_update", "deploy:symlink_config"
#end