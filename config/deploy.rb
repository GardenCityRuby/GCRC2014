require "bundler/capistrano"
ssh_options[:forward_agent] = true

set :user, ENV["DEPLOY_USER"]

set :repository,  "git@github.com:GardenCityRuby/GCRC2014.git"
set :scm,         :git
set :branch,      "master"
set :deploy_via,  :remote_cache
set :scm_verbose, true
set :use_sudo,    true

set :deploy_to,   ENV["DEPLOY_DIR"]
set :domain, ENV["DEPLOY_DOMAIN"]
set :port, ENV["SSH_PORT"]

server ENV["DEPLOY_DOMAIN"], :app, :web, :db, :primary => true

after "deploy:setup", "deploy:fix_permissions"
set :rake, "bundle exec rake"

namespace :deploy do
  desc "Fix permissions"
  task :fix_permissions, :roles => :app do
    sudo "chown -R #{user}:#{user} #{deploy_to}"
  end
end

after "deploy:create_symlink", "codemancers:compile"

namespace :gcrc do
  desc "Compile the content on Server"
  task :compile, :roles => :app do
    run "cd #{current_path} && be jekyll build --destination _deploy --config _config_deploy.yml"
  end
end
