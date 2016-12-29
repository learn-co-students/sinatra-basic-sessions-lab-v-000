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

    session[:item] = params[:item] #To store the item in a session Hash
    @session = session #Storing Session Hash in instance variable to be able to access it in the view

    erb :cart
  end

end
