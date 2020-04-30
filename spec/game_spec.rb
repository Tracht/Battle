require './lib/game'
require './lib/player'

describe Game do

  let(:marija) { Player.new("marija") }
  let(:hibo) { Player.new("hibo") }
  let(:game) { Game.new }

  describe '#attack' do
    it 'reduces player 2 hp by 10' do
      expect { game.attack(hibo) }.to change { hibo.hp }.by(-10)
    end
  end
end
