require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
end#do

get '/' do

  erb :index
end#get

post '/checkout' do
  session[:item] = params[:item]
  @session = session

  erb :checkout
end#post
end#class
