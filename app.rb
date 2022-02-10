require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attackp2' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:attackp2)
  end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end