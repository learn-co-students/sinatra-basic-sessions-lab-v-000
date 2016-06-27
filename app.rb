require_relative 'config/environment'

class App < Sinatra::Base

get '/' do 
  erb :index
end

post '/checkout' do
  session[:item] = params[:item]
  # binding.pry 
  @session = session

end 

  # session["name"] = "Victoria"
  # @session = session

end