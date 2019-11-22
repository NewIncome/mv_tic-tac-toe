#!/usr/bin/env ruby
# frozen_string_literal: true

puts "Welcome to Tic Tac Toe!"
puts "It's a two player game, so we'll need your names."
puts "Enter Player 1: "
player1 = gets.chomp
puts "Enter Player 2: "
player2 = gets.chomp
player1_choices, player2_choices = []
winning_combinations = [[1, 2], [3, 4]]
until winning_combinations.includes?(player1_choices) || winning_combinations.includes?(player2_choices)
print "###\n###\n###\n"
puts "#{player1} your turn, choose a cell[1-9]: "
player1_choices << gets.chomp
print "###\n###\n###\n"
puts "#{player2} your turn, choose a cell[1-9]: "
player2_choices << gets.chomp
end
puts "player1 wins"

# 4- Show the Board                       Loop again
# 5- Ask player 1 for to choose a cell    |
# 6- Show 'updated' Board                 |
# 7- Ask player 2 for to choose a cell    v
# 8- Repeat steps 4-7 until one of the players has a winning combination of choices
# 9- Display game outcome
# 10- Ask if players want to play again or quit
# 11- If choice is 'play again' loop back to step 1. Otherwise quit the game.