
class Player
  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 60
  ATTACK_HIT_POINTS = 10

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points -= ATTACK_HIT_POINTS
  end

end
