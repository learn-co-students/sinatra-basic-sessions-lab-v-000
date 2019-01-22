require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end 
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  post '/checkout' do 
    @session = session
    session[:item] = params[:item]
    
    erb :display 
  end
  
end