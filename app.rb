require_relative 'config/environment'

configure do
  enable :sessions
  set :sessions_secret, "flatiron"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :cart
  end
end
