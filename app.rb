require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "hello_world"
  end

  get '/' do
    @sessions = session
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @sessions = session
    erb :checkout
  end

end
