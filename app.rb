require_relative 'config/environment'

class App < Sinatra::Base

  #method to start a session
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  #GET request for SHOW action
  get '/' do 
    erb :index #render view in index.erb
  end

  #POST request for CREATE action
  post '/checkout' do
    session["item"] = params[:item]
    @session = session

    erb :show #render view in show.erb
  end

end