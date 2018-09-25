require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set  :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end

  get '/' do
    erb :index
  end

  post '/checkout' do

    @new_item = params[:item]
    session[:item] = @new_item
    # binding.pry
    erb :checkout
  end
end
