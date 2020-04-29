require 'player.rb'

describe Player do
# You could use this:
  # subject(:Tom) { Player.new('Tom') }
# Or this:
  # subject = Player.new('Tom')

  describe '#name' do
    it 'returns name Tom' do
      expect(subject.name).to eq('Tom')
    end
  end
end
