require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "37vdS7mUcZAXq1!Sj8rvgKD6Mb#SC0Y#thVr*u67TaSwZgP!k#&KmRkFA@THFFwPWi8LUS1NDiu4YX31!PssdH1FutWDICU6uT@"
  end
  
  get '/' do
    @session = session
    
    erb :index
  end
  
  post '/checkout' do
    @item = params[:item]
    
    session["item"] = params[:item]
    
    erb :checkout
  end
  
end