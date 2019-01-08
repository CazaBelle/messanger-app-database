require "data_mapper"
require_relative "message"

class Tag
  include DataMapper::Resource

  property :id, Serial 
  property :text, String
  has n,  :messages, :through => Resource

end