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
      expect(putin.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { putin.receive_damage }.to change { putin.hit_points }.by(-Player::ATTACK_HIT_POINTS)
    end
  end



end
