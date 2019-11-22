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
player1 = gets.chomp
puts "Enter Player 2: "
player2 = gets.chomp
#create variables to hold "winning combinations", "Player 1's choices" and "Player 2's choices"
puts ""
#Prompt player for choices until a winning combination of choices or a tie is obtained
print "###\n###\n###\n"
puts ""
puts "#{player1} your turn, choose a cell[1-9]: "
puts "#{player1} choices are updated"
puts ""
print "###\n###\n###\n"
puts ""
puts "#{player2} your turn, choose a cell[1-9]: "
puts "#{player2} choices are updated"
puts ""
puts "The Winner is: #{player1}"
