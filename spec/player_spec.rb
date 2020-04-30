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

  describe 'receive_damage' do
    it 'reduces HP' do
      expect { rose.receive_damage }.to change { rose.hp }.by(-10)
    end
  end 

  end
end
