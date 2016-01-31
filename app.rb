require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "billy"

  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params["item"]
    @session = session
    erb :checkout
  end

end