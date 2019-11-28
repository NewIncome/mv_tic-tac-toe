require_relative("../lib/board")

RSpec.describe(Board) do
  let(:board) {Board.new}

  it('has cells') do
    expect(board.board_cells).to(eq([1, 2, 3, 4, 5, 6, 7, 8, 9]))
  end

  it('can update board cells') do
    board.board_cells[5] = 'X'
    expect(board.board_cells).to(eq([1, 2, 3, 4, 5, 'X', 7, 8, 9]))
  end
  
  it('can display a game board') do
    expect(board.display).to(eq("
    \t \t #{board.board_cells[0]} | #{board.board_cells[1]} | #{board.board_cells[2]}
    \t \t --+---+---
    \t \t #{board.board_cells[3]} | #{board.board_cells[4]} | #{board.board_cells[5]}
    \t \t --+---+---
    \t \t #{board.board_cells[6]} | #{board.board_cells[7]} | #{board.board_cells[8]}
    "))
  end
end
