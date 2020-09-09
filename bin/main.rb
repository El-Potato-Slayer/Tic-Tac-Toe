#!/usr/bin/env ruby

require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'
require_relative '../lib/board.rb'
require_relative '../lib/validation.rb'

valid = Validation.new

print 'Player One, Enter Name: '
@name1 = gets.chomp
print 'Enter Sign: '
@sign1 = gets.chomp
@sign1 = valid.ask_sign(@sign1)
player1 = Player.new(@name1, @sign1)

print 'Player Two, Enter Name: '
@name2 = gets.chomp
valid.ask_name(@name1, @name2)

print 'Enter Sign: '
@sign2 = gets.chomp
@sign2 = valid.ask_sign(@sign2)
player2 = Player.new(@name2, @sign2)

player1.print

board = Board.new

game = TicTacToe.new(player1, player2, board)
game.print_board

game.play_game
