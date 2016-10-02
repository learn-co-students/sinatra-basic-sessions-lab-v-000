require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    status 200
    @session = session
    erb :index
  end

  post "/checkout" do
    status 200
    @item = params[:item]
    session[:item] = @item
  end
end