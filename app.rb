require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session["item"] = params["item"]
    # require "pry" ; binding.pry
    erb :checkout
  end

  configure do
    enable :sessions
    set :sesion_secret, "secret"
  end
end
