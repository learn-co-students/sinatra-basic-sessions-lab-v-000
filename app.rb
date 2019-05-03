require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :my_session, "41695"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session_item = session[:item]
    erb :checkout
  end

end
