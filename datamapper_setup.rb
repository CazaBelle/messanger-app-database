require 'data_mapper'

DataMapper.setup(:default, 'postgres://localhost/messanger_db')
DataMapper::Logger.new($stdout, :debug)
DataMapper.auto_upgrade!
DataMapper.finalize