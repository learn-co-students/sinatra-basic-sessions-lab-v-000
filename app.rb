require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
  end
  
  get '/' do
    @session = session
    erb :index
  end
  
  post '/checkout' do
    @item = params[:item]
    session["item"] = @item
    erb :checkout
  end
    
  
end