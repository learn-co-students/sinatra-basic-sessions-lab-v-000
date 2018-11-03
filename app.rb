require_relative 'config/environment'

class App < Sinatra::Base

configure do
  enable :sessions
  set :session_secret, "secret"
end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @cart = params["item"]
    session["item"] = @cart

    erb :shopping_cart
  end

end
