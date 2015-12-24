require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "opensesame"
  end

  get '/' do 
    @session = session
    erb :index
  end

  post "/checkout" do
    session[:item] = params["item"]
    session[:test] = params["test"]
    erb :checkout

  end
end

