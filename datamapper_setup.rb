# require 'data_mapper'
require './lib/message'

DataMapper.setup(:default, "postgres://localhost/messenger_db_#{ENV["RACK_ENV"]}")
DataMapper::Logger.new($stdout, :debug)
DataMapper.auto_migrate!
DataMapper.finalize