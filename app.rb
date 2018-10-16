require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :Sessions
    set :session_secret, 5
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session[:item] = @item
    @session = session

    erb :checkout
  end

end
