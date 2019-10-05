require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable: sessions
    set :sessions_secret, "secret"



get '/' do
  erb  :index
end

post '/checkout' do

sessions

  erb :
end



end
