require './lib/game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double :palyer }
  let(:player_2) { double :palyer }

  describe '#attack' do
    it 'damages the attacked player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  
end