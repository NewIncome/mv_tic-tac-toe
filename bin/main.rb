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
  attr_accessor :choices
  attr_reader :name, :sign

  def initialize(name, sign)
    @name = name
    @sign = sign
    @choices = []
  end

  def make_choice(choice)
    @choices << choice
  end
end

winning_combinations = [ [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 5], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7] ]

puts "Welcome to Tic Tac Toe!"
puts "It's a two player game, so we'll need your names."
puts "Enter Player 1: "
playerX = gets.chomp
player1 = Player.new(playerX, "X")
puts "Enter Player 2: "
playerO = gets.chomp
player2 = Player.new(playerO, "O")
board = Board.new
puts ""
#Prompt player for choices until a winning combination of choices or a tie is obtained
board.display
puts ""
puts "#{player1.name} your turn, choose a cell[1-9]: "
choice = gets.chomp.to_i
player1.make_choice(choice)
board.board_cells[choice-1] = 'X'
puts ""
board.display
puts ""
puts "#{player2.name} your turn, choose a cell[1-9]: "
choice = gets.chomp.to_i
player2.make_choice(choice)
board.board_cells[choice-1] = 'O'
puts ""
puts "The Winner is: #{player1}"
