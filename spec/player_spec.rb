require './lib/player'

describe Player do

# You could use this:

  let(:rose) { Player.new('Rose') }
  let(:jack) { Player.new('Jack') }

# Or this:
  # subject = Player.new('Tom')

  describe '#name' do
    it 'returns name Tom' do
      expect(rose.name).to eq('Rose')
    end

  describe '#attack' do
    it 'player 1 reduces player 2 HP by 10' do
      expect { rose.attack(jack) }.to change { jack.hp }.by(-10)
    end
  end

  end
end
