require_relative 'config/environment'

class App < Sinatra::Base
  #enabling sessions and setting the secret
  configure do
    enable :sessions
    set :session_secret, "pickles"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    @session=session
    @session[:item]=params[:item]
  end
end
