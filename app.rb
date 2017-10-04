require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "munchkin"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    session[:item] = params[:item]
    #binding.pry
    @session
  end
end
