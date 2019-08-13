require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'supercalafragalisticexpialidochius'

  end

  get '/' do
    # @session = session
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    # binding.pry
    session[:item] = params[:item]
  end

end
