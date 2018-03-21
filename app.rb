require_relative 'config/environment'



class App < Sinatra::Base
   
   configure do 
     enable :sessions 
     set :sessions_secret, "goober"
   end 
   
   get '/' do 
     erb :index 
   end 
   
   post '/checkout' do 
     session[:item] = params[:item]
     @sessions = session
     erb :checkout
   end 
  
end