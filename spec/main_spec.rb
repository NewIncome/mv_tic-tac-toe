# frozen_string_literal: true

require_relative("../main")

RSpec.describe("#game method") do
  let(:player) {Player.new('Player 1', 'X')}
  let(:board) {Board.new}
  winning_combinations = [ [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7] ]

  it('can choose the winner') do
  end

  it('can change the board cells') do
  end

  it('it can prompt user') do
  end

  it('It can display the board') do
  end

end