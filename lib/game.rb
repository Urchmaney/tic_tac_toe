# frozen_string_literal: true

class Game
  def initialize
    @board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
    @player = 1
    @space_used = 0
  end

  def check_for_win
    if (@board[0][0] == @board[1][0]) && (@board[1][0] == @board[2][0]) || # left
      (@board[0][0] == @board[1][1]) && (@board[1][1] == @board[2][2]) || # left Diagonal
      (@board[0][1] == @board[1][1]) && (@board[1][1] == @board[2][1]) || # middle vertical
      (@board[0][2] == @board[1][2]) && (@board[1][2] == @board[2][2]) || # right
      (@board[1][0] == @board[1][1]) && (@board[1][1] == @board[1][2]) || # middle horizontal
      (@board[2][0] == @board[2][1]) && (@board[2][1] == @board[2][2]) || # down
      (@board[0][0] == @board[0][1]) && (@board[0][1] == @board[0][2]) || # top
      (@board[0][2] == @board[1][1]) && (@board[1][1] == @board[2][0]) # right diagonal
      return true
    end
    false 
  end

  def display_board
  end

  def all_space_used
  end
end
# game = Game.new
# puts game.check_for_win
