require_relative 'config/environment'


class App < Sinatra::Base
  configure do
    enable :sessions                #turns sessions on
    set :session_secret, "secret"   #an encryption key that will be used to create a session_id
  end
  get '/' do
    erb :index
  end
  post '/checkout' do
  #  binding.pry
    session["item"] = params[:item]
    @session = session
    erb :checkout  #the checkout.erb in the views directory does not exist currently in this lab
  end
end
