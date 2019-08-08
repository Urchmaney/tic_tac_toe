# frozen_string_literal: true

require '../lib/game'

def start_game
  game = Game.new
  game.display_board
  while game.space_used < 9
    print "Input your move player #{game.player}   :"
    move = gets.chomp
    game.make_move(move.to_s)
    game.display_board
    unless !game.check_for_win(game.player)
      puts game.player == 2 ? 'Congratulations player 1 you have won.' : 'Congratulations player 2 you have won.'
      break
    end
  end
  puts 'The game is over!!!'
end
start_game
