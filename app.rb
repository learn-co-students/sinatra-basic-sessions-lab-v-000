require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "b137cc566e9cfd74cb85056960326971f80db615dd13575cfea5cdc9a081dd36b225e84e75dbc9aedeba99796fb86d8ef2a73d252ae648d587fc857246bc239d"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    session[:item] = params[:item]
    @session = session
    erb :item
  end
end
