require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end


  # The controller action /checkout, should take the params from the form and add it to the session hash.
  # The key should be item and the value should be the item the user entered to the purchase.
  # Make sure to store the session hash in an instance variable that you can access in the views.



  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    puts session
    erb :cart
  end

end
