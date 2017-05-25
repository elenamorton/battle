
class Player
  attr_reader :name
  attr_accessor :hit_points

  DEFAULT_HIT_POINTS = 60
  ATTACK_HIT_POINTS = 10

  def initialize(name = "Player", points = 100)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    @hit_points += DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hit_points -= ATTACK_HIT_POINTS
  end

end
