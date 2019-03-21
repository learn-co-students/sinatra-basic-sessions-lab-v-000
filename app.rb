require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "tiddlywinks"
end

class App < Sinatra::Base
end


  get '/'
    erb :index
  end


  post '/checkout' do
    @session = session
    @session = {
      "session_id" =>

# key = item
# value = item user entered to the purchase
# store session hash in instance variable that can be accessed in views
#
    }
    erb :'index/checkout'
  end

end
