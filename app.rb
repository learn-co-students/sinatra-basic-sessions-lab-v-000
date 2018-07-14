require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "random"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @cart = session[:item] = params[:item]
    erb :checkout
  end

end