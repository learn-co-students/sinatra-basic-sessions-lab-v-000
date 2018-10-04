require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "b430c0816d2ce50813131d5568e4d6ef50c977e4908a58ac7b2d1cd4f096aeddb68d36c329bd47cbb8c87b6740454647e6190bd429e0d29fabdbbcdb999e5650"
        set :views, "views"
    end

    get '/' do
        erb :index
        # binding.pry
    end

    post '/checkout' do
        session["item"] = params[:item]
        @session = session

        erb :checkout
    end

end