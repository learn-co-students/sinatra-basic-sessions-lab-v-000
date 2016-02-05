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
    params.each do |k, v|
      session[k] = v
    end
    @session = session
    erb :checkout
  end
end

# changed method for setting new values to the session hash
# using the .each method. It seems more abstract. I noticed there
# might be a problem if there were more than one item, which means
# the data structure would have to change to an array of hashes