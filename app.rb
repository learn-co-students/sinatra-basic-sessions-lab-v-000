require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do 
    erb :index
  end
  
  configure do 
    enable :session 
    set :session_secret, "secret"
  end 
  
  post "/checkout" do 
    session[:item] = params[:item]
    erb :checkout
  end
  
end