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

  describe '#switch_turn' do
    it 'changes turn from player1 to player 2' do
      expect { game.switch_turn }.to change { game.turn }.from(game.player1).to(game.player2)
    end

    it 'changes turn from player2 to player 1' do
      game.switch_turn
      expect { game.switch_turn }.to change { game.turn }.from(game.player2).to(game.player1)
    end
  end
end
