require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  configure do
    enable :sessions
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    @cart= params[:item]
    session[:item]= @cart
    @session= session
  end
  
end
