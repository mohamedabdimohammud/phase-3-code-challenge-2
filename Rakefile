require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

# Load the environment
task :environment do
  require './config/environment'
end

# Run database migrations
task :db_migrate => :environment do
  ActiveRecord::Migration.verbose = true
  ActiveRecord::Migrator.migrate('./db/migrate')
end

# Load the seed data
task :db_seed => :environment do
  load './db/seeds.rb'
end

# Create a task for running the console
task :console => :environment do
  require 'irb'
  ARGV.clear
  IRB.start
end

# Define the default task
task :default => [:environment]

