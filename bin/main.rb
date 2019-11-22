#!/usr/bin/env ruby
# frozen_string_literal: true

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
