require 'db-entropy'

namespace :entropy do
  
  task :randomize_mysql_config do
    DbEntropy::Mysql.new.generate_yaml('config/database.yml')
  end
  
  task :randomize_mongoid_config do
    DbEntropy::Mongoid.new.generate_yaml('config/mongoid.yml')
  end

  task :randomize_db_configs => [:randomize_mysql_config, :randomize_mongoid_config]
  
end