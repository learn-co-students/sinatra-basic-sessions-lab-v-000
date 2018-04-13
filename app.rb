require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end
# session are avaibla anywhere in your app.

   get '/' do
      erb :index
   end

    post '/checkout' do
      session[:item] = params[:item]
      @session = session #relate to session line 7
      erb :checkout
    end


end
