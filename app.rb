require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, ENV['SESSION_SECRET'] ||= SecureRandom.hex(64)
    end

    get "/" do
        erb :index
    end

    post "/checkout" do
        session[:item] = params[:item]
        @session = session

        "#{@session[:item]}"
    end

end