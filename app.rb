require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :sessions_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end
  
  post '/checkout' do
    @session = session
    @session['item'] = params[:item]
    "<h1>Cart Results:</h1>
    <p>#{params[:item]}</p>"
  end
end
