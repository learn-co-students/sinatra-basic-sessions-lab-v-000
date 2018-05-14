require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "shivermetimbers"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    # binding.pry
    @session = session
    params.each do |k, v|
      @session[k] = v
    end
    # @session[:item] = params[:item]
    erb :checkout
  end
end
