require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'secret'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    "<p>#{@item}</p>"
    @session = session
    @session[:item] = @item
  end

end