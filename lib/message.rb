# require "pg"
require "data_mapper"



class Message
  include DataMapper::Resource

  property :id, Serial
  property :message, String
  property :time, DateTime

  def twenty_chars
    @text[0...20]
  end

end

