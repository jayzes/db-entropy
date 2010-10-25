$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module DbEntropy
  VERSION = '0.0.1'
end

require 'db-entropy/base'
require 'db-entropy/mysql'
require 'db-entropy/mongoid'