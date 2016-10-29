require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "c;MDWjpKyB9E9T8m2g$/6o(gG,"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session[:item] = @item
    erb :index
  end
end
