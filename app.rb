require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb(:play)
  end

  get '/attackp2' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb(:attackp2)
  end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end