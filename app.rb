require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, 'foolingyou'
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    item = params['item']
    session[:item] = item
    @session = session

    erb :checkout
  end

  
end
