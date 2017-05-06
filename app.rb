require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @checkout_item = params[:item]
    session[:item] = @checkout_item
    @session = session
    erb :show
  end
end
