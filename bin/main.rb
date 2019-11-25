#!/usr/bin/env ruby
# frozen_string_literal: true

class Board
	attr_accessor :board_cells
	def initialize
			@board_cells = [1,2,3,4,5,6,7,8,9]
	end
	def display
			puts ""
			puts "\t \t #{@board_cells[0]} | #{@board_cells[1]} | #{@board_cells[2]}"
			puts "\t \t --+---+---"
			puts "\t \t #{@board_cells[3]} | #{@board_cells[4]} | #{@board_cells[5]}"
			puts "\t \t --+---+---"
			puts "\t \t #{@board_cells[6]} | #{@board_cells[7]} | #{@board_cells[8]}"
			puts ""
	end
end

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

winning_combinations = [ [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7] ]

puts "Welcome to Tic Tac Toe!"
puts "It's a two player game, so we'll need your names."
puts "Enter Player 1: "
playerX = gets.chomp
player1 = Player.new(playerX, "X")
puts "Enter Player 2: "
playerO = gets.chomp
player2 = Player.new(playerO, "O")
board = Board.new



#p board.board_cells.include?(Numeric)
def max_choices(player)
	if player.choices.length > 3
		player.choices = []
	end
end

def prompt_user(board, player, winning_combinations)
	puts ""
	board.display
	puts ""
	puts "#{player.name} your turn, choose a cell[1-9]: "
	choice = gets.chomp.to_i
	player.make_choice(choice)
	board.board_cells[choice-1] = player.sign
	winning_combinations.each do |arr|
		if player.choices.length >= 3 && player.choices.sort & arr == arr
			player.winner = true
			break
		end
	end
end

until board.board_cells.all?(String)
	prompt_user(board, player1, winning_combinations)
	break if board.board_cells.all?(String) || player1.winner == true
	prompt_user(board, player2, winning_combinations)
	break if board.board_cells.all?(String) || player2.winner == true
end

if player1.winner == true
	puts "The winner is: #{player1.name}!"
elsif player2.winner == true
	puts "The winner is: #{player2.name}!"
else
	puts "The game outcome is a Tie."
end
