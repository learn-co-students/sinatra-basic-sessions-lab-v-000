require_relative 'config/environment'

class App < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/checkout' do

    
    erb :checkout
  end

end