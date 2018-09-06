require_relative 'config/environment'
require 'securerandom'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, SecureRandom.hex(64)
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]

    erb :item
  end

end
