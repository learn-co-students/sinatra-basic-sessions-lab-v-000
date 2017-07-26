require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :session
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
     @item = params[:item]
     @session = session
     @session[:item] = params[:item]
    erb :checkout
    #binding.pry
  end
  end
