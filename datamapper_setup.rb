
require './lib/message'
require './lib/tag'

DataMapper.setup(:default, "postgres://localhost/messenger_db_#{ENV["RACK_ENV"]}")
DataMapper::Logger.new($stdout, :debug)
DataMapper.finalize