require_relative 'config/environment'

	configure do |variable|
	enable :sessions
	set :sessions_secret, "secret"
end

class App < Sinatra::Base


	get '/' do
		erb :index
	end

	post '/checkout' do
		session[:item] = params["item"]
		@session = session
	
		erb :item
	end

end