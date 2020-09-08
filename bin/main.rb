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


haswon = false

game = TicTacToe.new(player1, player2, board)
game.print_board

game.play_game


# turn = 0
# current_player = nil

# unless haswon
#   turn.even? ? current_player = player1 : current_player = player2
#   print 'Enter a row: '
#   row = gets.chomp.to_i
#   print 'Enter a column: '
#   column = gets.chomp.to_i
  
#   if board.move_valid?(row, column)
#     board.apply_coords(row - 1, column - 1, 'X')
#     turn += 1
#   end

#   game.print_board
# end


puts "#{current_player.name} has won"
