require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    # session.merge!(params)
    session[:item] = params.values.first
    @session = session
    erb :checkout
  end
end

# the merge method did not work. i had to manually add the key, :item
# to the session hash and set it equal to a value.  something about this
# seems incorrect. i will compare with the solution.