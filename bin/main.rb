require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'
require_relative '../lib/board.rb'

#!/usr/bin/env ruby

# puts 'Enter Name:'
# @name = gets.chomp
# puts 'Enter Sign:'
# @sign = gets.chomp

# player1 = Player.new(@name, @sign)
player1 = Player.new('Chad', 'O')
player2 = Player.new('Chad', 'O')

player1.print

board = Board.new

print "Enter a row: "
row = gets.chomp.to_i
print "Enter a column: "
column = gets.chomp.to_i

if board.move_valid?
  board.apply_coords(row - 1, col - 1)
end

game = TicTacToe.new(player1, player2, board)
game.print_board