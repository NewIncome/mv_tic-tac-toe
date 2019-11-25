class Player
  attr_accessor :choices, :winner
  attr_reader :name, :sign

  def initialize(name, sign, winner = false)
    @name = name
    @sign = sign
		@choices = []
		@winner = winner
  end

  def make_choice(choice)
    @choices << choice
  end
end
