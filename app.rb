require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :sessions_secret, "myTestRunAtSessions"
    end

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end

end