require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/config_file'
require 'sinatra/content_for'
require 'sinatra/flash'

configure do
  if ENV['DATABASE_URL'].blank?
    config_file 'config/development.yml'
    db_config = YAML.load(File.read('config/database.yml'))
    ActiveRecord::Base.establish_connection db_config['development']
  else
    ActiveRecord::Base.establish_connection ENV['DATABASE_URL']
  end

  Dir['./app/models/**/*.rb'].each { |file| require file }
  Dir['./app/helpers/**/*.rb'].each { |file| require file }
  Dir['./app/routes/**/*.rb'].each { |file| require file }
  Dir['./app/lib/**/*.rb'].each { |file| require file }

  set :views, ['views/layouts', 'views/pages', 'views/partials']

  enable :sessions
  set :session_secret, '*&(^9876&*'

  $stdout.sync = true
end
