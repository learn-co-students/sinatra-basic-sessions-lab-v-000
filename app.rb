require_relative 'config/environment'

class App < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

end