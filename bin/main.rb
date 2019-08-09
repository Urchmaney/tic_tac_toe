# frozen_string_literal: true

require '../lib/game'

def display_board(board)
  board.each_with_index do |row, row_index|
    row_string = ' '
    row.each_with_index do |element, index|
      row_string += ' | ' if index != 0
      row_string += element
    end
    puts row_string
    puts '-----------' if row_index != 2
  end
end

def player_move(player, game)
  print "Input your move player #{player.name}   :"
  move = gets.chomp
  game.make_move(move.to_s, player)
  display_board(game.board.array)
  if game.check_for_win(player)
    puts "Congratulations #{player.name}  you have won."
  end
end

def start_game
  puts 'Input first player name'
  player_1_name = gets.chomp
  puts 'Input second player name'
  player_2_name = gets.chomp
  game = Game.new(player_1_name,player_2_name)
  display_board(game.board.array)
  while game.board.space_used < 9
    player_move(game.player_1,game)
    break if game.board.space_used > 8
    player_move(game.player_2,game)
  end
  puts 'The game is over!!!'
end
start_game
