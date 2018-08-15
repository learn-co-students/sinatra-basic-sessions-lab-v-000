require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :Sessions
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
    erb :item
  end
end
