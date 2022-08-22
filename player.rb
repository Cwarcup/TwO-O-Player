class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  attr_reader :name
  attr_accessor :lives
end
