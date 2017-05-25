require 'player'

describe Player do

  subject(:putin) { Player.new('Putin') }
  subject(:trump) { Player.new('Trump') }

  describe '#name' do
    it 'returns the player name' do
      expect(putin.name).to eq 'Putin'
    end
  end

  describe '#hit points' do
    it 'returns the hit points' do
      expect(putin.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end



end
