class Game

  attr_reader :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @opposing_player = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player = @opposing_player)
    player.receive_damage
  end

  def switch_turns
    @current_player, @opposing_player = @opposing_player, @current_player
  end

private

  attr_reader :players, :opposing_player

  def opposing_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
