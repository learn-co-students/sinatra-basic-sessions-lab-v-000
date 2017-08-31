require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "super secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    params[:item]
    session[:item] = params[:item]
    @session = session

    erb :checkout
  end
end
