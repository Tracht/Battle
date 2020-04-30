require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1_name])
    $Player2 = Player.new(params[:Player2_name])
    redirect '/play'
  end

  get '/play' do
    @Player1_name = $Player1.name
    @Player2_name = $Player2.name

    @Player1_hp  = $Player1.hp
    @Player2_hp  = $Player2.hp
    erb(:play)
  end

  post '/hits' do
    Game.new.attack($Player2)
    @Player1_hp  = $Player1.hp
    @Player2_hp  = $Player2.hp
    redirect '/attack'
  end

  get '/attack' do
    @Player1_name = $Player1.name
    @Player2_name = $Player2.name
    @Player1_hp  = $Player1.hp
    @Player2_hp  = $Player2.hp
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
