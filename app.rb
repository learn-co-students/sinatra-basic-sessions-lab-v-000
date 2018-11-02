require_relative 'config/environment'
require 'sinatra/base'
require 'pry'



class App < Sinatra::Base

  configure do
  enable :sessions
  set :session_secret, "lakshmiji1"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end



end
