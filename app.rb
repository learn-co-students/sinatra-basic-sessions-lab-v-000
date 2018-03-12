require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :sessions_secret, "secret"
  end

  get "/" do
    @session = session
    session["name"] = "Victoria"
    erb :index
  end

  post "/checkout" do
    session["item"] = params[:item]
    erb :cart
  end
end
