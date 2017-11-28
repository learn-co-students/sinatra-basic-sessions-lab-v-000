require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item]= params[:item]
    @item = @session[:item]
    erb :checkout
  end

  configure do
    enable :sessions
    set :session_secret, "justCause"
  end
end
