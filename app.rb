require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player1_name])
    player2 = Player.new(params[:Player2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # puts @player1_name = $game.player1.name
    # puts @player2_name = $game.player2.name
    @game = $game
    erb(:play)
  end

  post '/hits' do
    @game = $game
    @game.attack(@game.player2)

    # $game.attack($game.player2)
    # @player1_hp  = $game.player1.hp
    # @player2_hp  = $game.player2.hp
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    # @player1_name = @game.player1.name
    # @player2_name = @game.player2.name
    # @player1_hp  = @game.player1.hp
    # @player2_hp  = @game.player2.hp
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
