require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'
require_relative '../lib/board.rb'

# !/usr/bin/env ruby

puts 'Enter Name:'
@name = gets.chomp
puts 'Enter Sign:'
@sign = gets.chomp

player1 = Player.new(@name, @sign)

puts 'Enter Name:'
@name = gets.chomp
puts 'Enter Sign:'
@sign = gets.chomp

player2 = Player.new(@name, @sign)

player1.print

board = Board.new

game = TicTacToe.new(player1, player2, board)
game.print_board

game.play_game

puts "#{current_player.name} has won"
