require '../lib/game'

def start_game
  game = Game.new
  game.display_board
  while game.space_used < 9    
    print "Input your move player #{game.player}   :"
    move = gets.chomp
    game.make_move(move.to_s)
    game.display_board
    if game.check_for_win(game.player)
      puts "Congratulations player 1 you have won." if game.player == 2
      puts "Congratulations player 2 you have won." if game.player == 1
      break
    end
  end
  puts "The game is over!!!"
end
start_game