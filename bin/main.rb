require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'
require_relative '../lib/board.rb'

# !/usr/bin/env ruby

@valid = false

def ask_sign
  sign = nil
  while !@valid
    print 'Enter Sign: '
    sign = gets.chomp
    puts 'Please enter 1 character for the sign' if sign.length > 1
    next unless sign.length == 1
    @valid = true
  end
  sign
end

print 'Player One, Enter Name: '
@name1 = gets.chomp
@sign1 = ask_sign



player1 = Player.new(@name1, @sign1)

@valid = false

while !@valid
  print 'Player Two, Enter Name: '
  @name2 = gets.chomp
  puts "#{@name1} is already taken" if @name1 == @name2
  next unless @name1 != @name2
  print 'Enter Sign: '
  @sign2 = gets.chomp
  @valid = true
end



player2 = Player.new(@name2, @sign2)

player1.print

board = Board.new

game = TicTacToe.new(player1, player2, board)
game.print_board

game.play_game
