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
    @session = session
    @session[:item] = params[:item]
    puts "Session"
    @session.each do |key, value|
      puts "#{key}: #{value}"
    end
    erb :checkout
  end

end