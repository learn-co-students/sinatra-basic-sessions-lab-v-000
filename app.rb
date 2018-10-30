require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "123456789"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @name = params["item"]
    session[:item] = "#{@name}"
    erb :show
  end

end
