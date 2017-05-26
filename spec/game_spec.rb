require './lib/game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) { described_class.new(dead_player, player_2) }
  let(:player_1) { double :player1, hit_points: 60 }
  let(:player_2) { double :player2, hit_points: 60 }
  let(:dead_player) { double :player, hit_points: 0 }

  describe '#player_1' do
    it 'receives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'receives the first player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'current turn' do
    it 'starts as player 1' do
      expect(game.current_player).to eq player_1
    end
  end

  describe '#attack' do
    it 'damages the attacked player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_player).to eq player_2
    end

    it 'switch players turn' do
      expect(game.switch_turns).to eq [player_2, player_1]
    end
  end

  describe '#loser' do
    it ' returns the player on less than 0hp' do
      expect(finished_game.loser).to eq dead_player
    end
  end

  describe '#game_over' do
    it 'returns false if no player has 0HP' do
      expect(game.game_over?).to eq false
    end

    it 'returns true if a player has 0HP' do
      expect(finished_game.game_over?).to eq true
    end
  end

end
