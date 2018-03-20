require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base
  get '/' do
      @session = session
      erb:index
  end
  
  post '/checkout' do
      require 'pry'; binding.pry
      session[:item] = params[:item]
      @session = session
      erb :item
  end
end

