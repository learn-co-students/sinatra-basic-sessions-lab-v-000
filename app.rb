require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "my_secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
  end
end
