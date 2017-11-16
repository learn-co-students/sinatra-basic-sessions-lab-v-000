require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'encription_key_that_you_wont_guess'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @shopping_cart = session[:item]
    @session = session

    erb :checkout
  end

end
