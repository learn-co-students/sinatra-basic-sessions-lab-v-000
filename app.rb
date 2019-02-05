require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
    #a session is a hash that stores datas
    #and passes data to that client as a cookie
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    #setting item from the form with a item key in the session hash
    @session = session
    #Because we enabled sessions in our app,
    #every controller action has access to the session hash.
    @item = item
  end
end
