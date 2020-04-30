require './lib/game'
require './lib/player'

describe Game do

  let(:marija) { Player.new("marija") }
  let(:hibo) { Player.new("hibo") }
  let(:game) { Game.new(marija, hibo) }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq marija
    end
  end

  describe '#player2' do
    it 'retrieves the first player' do
      expect(game.player2).to eq hibo
    end
  end

  describe '#attack' do
    it 'reduces player 2 hp by 10' do
      expect { game.attack(hibo) }.to change { hibo.hp }.by(-10)
    end
  end
end
