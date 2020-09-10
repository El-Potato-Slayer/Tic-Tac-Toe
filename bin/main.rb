#!/usr/bin/env ruby

require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'
require_relative '../lib/board.rb'

def ask_input(player, obj)
  Gem.win_platform? ? (system 'cls') : (system 'clear')
  print "#{player}, please enter a #{obj}: "
  gets.chomp
end

def input_valid?(obj, obj1, obj2)
  valid = false
  until valid
    Gem.win_platform? ? (system 'cls') : (system 'clear')
    print "#{obj1} is already taken\nPlease enter another #{obj}: " if obj1 == obj2
    obj2 = gets.chomp if obj1 == obj2
    next unless obj1 != obj2

    valid = true
  end
  Gem.win_platform? ? (system 'cls') : (system 'clear')
  obj2
end

def ask_coordinate(player, coordinate)
  print "#{player.name} enter a #{coordinate}: "
  begin
    Integer(gets)
  rescue StandardError
    'Please enter an integer'
  end
end

def valid_coordinate?(input)
  input >= 1 && input <= 3 ? input : puts('Invalid coordinates. Please enter an integer equal to or between 1 and 3')
end

name = ask_input('Player 1', 'name')
sign = ask_input('Player 1', 'sign')
player1 = Player.new(name, sign)

name = ask_input('Player 2', 'name')
name = input_valid?('name', player1.name, name)
sign = ask_input('Player 2', 'sign')
sign = input_valid?('sign', player1.sign, sign)
player2 = Player.new(name, sign)

board = Board.new
tictactoe = TicTacToe.new(player1, player2, board)

puts tictactoe.game_board

has_won = false
player_turn = nil
turn = 0
until has_won || tictactoe.draw?

  player_turn = turn.even? ? player1 : player2

  row = ask_coordinate(player_turn, 'row').to_i
  next unless valid_coordinate?(row)

  col = ask_coordinate(player_turn, 'col').to_i
  next unless valid_coordinate?(col)

  if tictactoe.move_valid?(row - 1, col - 1)
    board.apply_coords(row - 1, col - 1, player_turn.sign)
    puts tictactoe.game_board
    turn += 1
  else
    puts 'Invalid coordinates. The selected cell is already occupied. Please try again'
  end
  has_won = tictactoe.won?(player_turn.sign)
end

puts tictactoe.won?(player_turn.sign) ? "#{player_turn.name} has won" : 'The game is a draw'
# game.play_game
