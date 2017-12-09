require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "sldjfalksfjklasdjfkladsjkfsaklfsdal89473892sdakjfkljfkdsakf"
    end
    
    get '/' do
        erb :index
    end
    
    post '/checkout' do
        @session = session
        puts params
        @session[:item] =  params[:item]
        erb :form_result
    end
end