# require "pg"
require "data_mapper"

class Message
  include DataMapper::Resource

  property :id, Serial
  property :message, String
  property :created_at, DateTime

  def twenty_chars
    @message[0...20]
  end

  def format_time
    @created_at.strftime("%H:%M:%S - %d/%m/%y")
  end
end

