require_relative 'config/environment'

class App < Sinatra::Base
  # Configure sessions hash, set session secret
  configure do
    enable :sessions
    set :session_secret, "pootie_tang"
  end

  get '/' do
    erb :index
  end

  # Set item key to session[:item] from params[:item] from name='item'
  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :index
  end

end
