require_relative 'config/environment'

class App < Sinatra::Base
  configure do
  enable :sessions
  set :session_secret, "secret"
end

  GET "/" do
  session["form"] = "newForm"
	end

  POST "/checkout" do
    return cart
    session["form"] = "newForm"
  		erb :index
  	end


    GET '/hey' do
  session["purchase"] = "item"
  @session = session
end
end
