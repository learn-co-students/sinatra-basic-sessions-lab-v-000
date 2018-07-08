require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do

    params.each do |key, value|
      session[key] = value
    end
    @session = session
    erb :checkout
  end
end
