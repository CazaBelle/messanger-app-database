ENV["RACK_ENV"] ||= 'development'

require "sinatra/base"
require './lib/message'
require './lib/tag'
require 'data_mapper'
require 'pry'
require_relative 'datamapper_setup'
require 'sinatra/partial'

class Talk2me < Sinatra::Base
  enable :sessions
  enable :method_override 

  configure do
    register Sinatra::Partial
    set :partial_template_engine, :erb
  end

  get '/' do
    @messages = Message.all
    @tags = Tag.all
    erb :index
  end

  post '/message' do
    message = Message.create(:message => params[:message])
    tag = Tag.first_or_create(:text => params[:tag])
    message.tags << tag
    message.save
    redirect '/'
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

  delete '/message/:id' do
    p 'here' 
    message = Message.get(params[:id])
    tag = Tag.get(params[:id])
    message.message_tags.all.destroy
    tag.tag_messages.all.destroy
    # message = Message.get(params[:id])
    # tag = Tag.get(params[:id])
    # MessageTag.get(:message => message, :text => tag).destroy
    # message = Message.get(params[:id])
    # message.destroy
    # tag = Tag.get(params[:id])
    # tag.destroy
    redirect('/')
  end 

  run! if app_file == $0

end

