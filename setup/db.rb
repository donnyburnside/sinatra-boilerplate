require "sinatra/activerecord"
require "yaml"

# Establish ActiveRecord connection
config = YAML.load_file("config/database.yml")

# Setup connection to production database
if ENV["DATABASE_URL"].blank?
    ActiveRecord::Base.establish_connection config["development"]
  else
    ActiveRecord::Base.establish_connection ENV["DATABASE_URL"]
end
