require_relative 'config/environment'

configure do
  enable :Sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/checkout' do
    session[:item] = params[:item]
    @session = session

  end
end
