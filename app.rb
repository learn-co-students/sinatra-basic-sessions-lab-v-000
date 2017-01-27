require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :set_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
  end
end
