require_relative 'config/environment'

class App < Sinatra::Base
    
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post "/checkout" do 
    @item_added = params[:item]
    session[:item] = @item_added
    @sessions = session
    erb :checkout
  end
end