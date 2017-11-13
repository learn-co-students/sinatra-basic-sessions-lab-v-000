require_relative 'config/environment'

class App < Sinatra::Base

  # configure do
  enable :sessions
  #   set :session_secret, "secret"
  # end

  get '/' do
    session["item"] = "Victoria"
    # @session = session

    erb :index
  end

  post '/checkout' do
    @item = params["item"]
    store_name(@item)

    erb :checkout
  end

end
