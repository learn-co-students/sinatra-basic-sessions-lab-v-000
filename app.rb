require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :Sessions
    set :session_secret, "PurpleMonkeyDishwasher"
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
