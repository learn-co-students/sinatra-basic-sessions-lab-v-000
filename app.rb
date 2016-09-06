require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "jaberwocky_planet"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    erb :checkout
    session["item"] = params[:item]
  end

  get '/checkout' do
    erb :checkout
  end





end
