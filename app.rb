require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    erb :index
  end


  post "/checkout" do
  @session = session
@new_hash = @session.merge!(params)
    @item = @new_hash["item"]
  erb :display
  end



  
end