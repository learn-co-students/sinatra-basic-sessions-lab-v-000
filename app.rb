require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "random"
  end

  get '/' do
    erb :index
  end
  
  post '/checkout'
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end
  
end