require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    @params = params
    @item = params[:item]
    session[:item] = @item
    erb :checkout
  end
    
  
end