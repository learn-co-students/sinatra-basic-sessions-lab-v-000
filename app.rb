require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :sessions_secret, "the_secret"
  end
  
  get '/' do
    erb :'index'
  end
  
  post '/checkout' do
    item = params["item"]
    @session = session
    @session[:item] = item
    
    erb :'checkout'
  end  
end