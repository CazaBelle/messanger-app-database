ENV["RACK_ENV"] ||= 'development'

require "sinatra/base"
require './lib/message'
require 'data_mapper'
require 'pry'
require_relative 'datamapper_setup'

class Talk2me < Sinatra::Base
  enable :sessions
  enable :method_override 


  get '/' do
    @messages = Message.all
    erb :index
  end

  get '/message/:id' do |id|
    @message = Message.get!(id)
    erb(:full_message)
  end

  get '/message/:id/edit' do
    @message = Message.get(params[:id])
    erb(:edit_message)
  end
  
  put '/message/:id' do
    @message = Message.get(params[:id])
    @message.update!(:message => params[:message])
    redirect '/'
  end 

  post '/message' do
    Message.create(:message => params[:message])
    redirect '/'
  end

  run! if app_file == $0

end

