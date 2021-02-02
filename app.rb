require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end 

    post '/checkout' do
        session["item"]= params[:item]
        @session = session

        erb :checkout
    end

    

    configure do
        enable :sessions
        SESSION_SECRET= "c166ccccf18ab7bba6d7320b39cb7030f5c6706ed7245b5a91564e5a5f8c921df7d8de7801655d2561da832ee8f586a64ca278622d045c39bc59732b308e9dac"
        set :session_secret, SESSION_SECRET
      
    end

end