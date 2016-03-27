require 'sinatra/activerecord/rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'tests/**/*_test.rb'
end

namespace :db do
  task :load_config do
    require './app'
  end
end
