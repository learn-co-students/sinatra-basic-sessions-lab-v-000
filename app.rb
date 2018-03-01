require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "bozo"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]

    #Below makes session info available to VIEWS files
    @session = session

    erb :cart
  end

end
