require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    #binding.pry
    session[:item] = params[:item]
    @session = session

    erb :show
  end
end
