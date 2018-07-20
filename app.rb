require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "super secret"
  end

  get '/' do
    erb :index
  end

  # get '/checkout' do
  # end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
  end

end # App
