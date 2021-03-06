# frozen_string_literal: true

class Board
  attr_accessor :board_cells

  def initialize
    @board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    "
    \t \t #{@board_cells[0]} | #{@board_cells[1]} | #{@board_cells[2]}
    \t \t --+---+---
    \t \t #{@board_cells[3]} | #{@board_cells[4]} | #{@board_cells[5]}
    \t \t --+---+---
    \t \t #{@board_cells[6]} | #{@board_cells[7]} | #{@board_cells[8]}
    "
  end
end
