#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "../lib/board"
require_relative "../lib/player"

winning_combinations = [ [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7] ]

puts 'Welcome to Tic Tac Toe!'
puts "It's a two player game, so we'll need your names."
puts 'Enter Player 1: '
playerX = gets.chomp
player1 = Player.new(playerX, 'X')
puts 'Enter Player 2: '
playerO = gets.chomp
player2 = Player.new(playerO, 'O')
board = Board.new
puts ''
board.display
puts ''

def game(board, player, winning_combinations)
	puts "#{player.name}, it's your turn, choose an unselected cell from the board: "
	choice = gets.chomp.to_i
	until board.board_cells.include?(choice)
		puts 'Please input a number between 1-9 in the available options on the board: '
		choice = gets.chomp.to_i
	end
	player.make_choice(choice)
	board.board_cells[choice - 1] = player.sign
	winning_combinations.each do |arr|
		if player.choices.length >= 3 && player.choices.sort & arr == arr
			player.winner = true
			break
		end
	end
	puts ''
	board.display
	puts ''
end


until board.board_cells.all?(String)
	game(board, player1, winning_combinations)
	break if board.board_cells.all?(String) || player1.winner == true
	game(board, player2, winning_combinations)
	break if board.board_cells.all?(String) || player2.winner == true
end

if player1.winner == true
	puts "The winner is: #{player1.name}!"
elsif player2.winner == true
	puts "The winner is: #{player2.name}!"
else
	puts 'The game outcome is a Tie.'
end
