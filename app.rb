ENV["RACK_ENV"] ||= 'development'

require "sinatra/base"
require './lib/message'
require 'data_mapper'
require 'pry'
require_relative 'datamapper_setup'

class Talk2me < Sinatra::Base


  get '/' do
    @messages = Message.all
    erb :index
  end

  post '/message' do
    Message.create(:message => params[:message])
    redirect '/'
  end

  get '/full_message/:id' do |id|
    @message = Message.get!(id)
    erb(:full_message)
  end
  

  run! if app_file == $0

end
