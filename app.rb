require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"

    get '/' do
      erb :index
    end

    post '/checkout' do
      @session = session
      @session["item"] = params[:item]
    end

    get '/checkout' do
      erb :show
    end
  end
end
