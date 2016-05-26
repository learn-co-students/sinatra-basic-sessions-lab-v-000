require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions unless test?
    set :session_secret, "wouldntyouliketoknow"
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
