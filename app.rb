require_relative 'config/environment'


class App < Sinatra::Base


	get '/' do 
		@session = session
		erb :index
	end

	post '/checkout' do 
		session[:item] = params[:item]
		@session = session
		@session = "socks"
	end
end