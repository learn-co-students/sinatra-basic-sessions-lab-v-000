require_relative 'config/environment'

class App < Sinatra::Base

    configure do  #this block enables sessions and sets a sessions_secret
        enable :sessions
        set :sessions_secret, "secret"
    end

    get '/' do  #controller action that responds to GET '/'.  Renders to index.erb.
        erb :index
    end

    post '/checkout' do #takes the params from the form and adds it to the session hash.
        session["item"] = params[:item] #the key is item. value is the item the user entered.
        @session = session #stores the has in an instance variable.
    end
end
