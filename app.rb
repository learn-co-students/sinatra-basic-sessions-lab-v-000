require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, "secret"
  end
  
  get('/'){
    erb :index
  }
  
  post('/checkout'){
    @item_name = params[:item]
    @session = session
    @session[:item] = @item_name
    erb :checkout
  }
  
end