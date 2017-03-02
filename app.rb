require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :secret_session, "idiotbreath"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    # binding.pry
    params.each do |k, v|
      self.session[k] = v
    end

  end

end
