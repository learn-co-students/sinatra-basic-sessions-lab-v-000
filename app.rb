require_relative 'config/environment'
configure do
  enable :sessions
  set :session_secret, "secret"
end
class App < Sinatra::Base
  get '/' do

    erb :index
  end
  post '/checkout' do
    @session = session #declaring this does what exactly? Per intro lesson. oh ok, passes but shotgun doesn't work, now it does
    #needs to be in post for params to exist?
    session[:item] = params[:item] #has to be :item not :cart for rspec, seems to set itself anyway as @session

    erb :checkout
  end
end
