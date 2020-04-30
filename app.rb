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
    @game = $game
    erb(:play)
  end

  post '/hits' do
    @game = $game
    @game.attack(@game.opponent)
    @game.switch_turn
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
