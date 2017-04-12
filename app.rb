
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "12345"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    @session = session
    puts params[:item]
    @session[:item] = params[:item]
    erb :checkout
  end
end
