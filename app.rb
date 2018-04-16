require_relative 'config/environment'
require 'pry'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    # binding.pry
  session[:item] = "socks"

    @session = session

  end

end
