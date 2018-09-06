require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @item = params[:item]
    erb :checkout
  end

  configure do
    enable :sessions
    set :session_secret, "secret"

  end
end
