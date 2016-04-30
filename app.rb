require "./setup/libs"    # Require libraries
require "./setup/config"  # Require config
require "./setup/db"      # Require db setup

Dir["./app/**/*.rb"].each { |file| require file }
