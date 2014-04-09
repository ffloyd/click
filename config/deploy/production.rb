# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
set :user, 'click'
set :server_name, '95.85.29.116'
server  fetch(:server_name),
        user: fetch(:user),
        roles: %w{web app db}

# Default deploy_to directory is /var/www/my_app
set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"

# because default is 'staging'
set :rails_env, 'production'