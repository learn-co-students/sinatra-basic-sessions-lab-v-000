require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "o2i4n034nfr0943nwef0n"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session['item'] = params[:item]
    @session = session
    erb :checkout
  end
end
