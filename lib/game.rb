# frozen_string_literal: true

class Game #:nodoc:
  def initialize
    @board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
    @player = 1
    @space_used = 0
  end

  def check_for_win
    if check_equality(@board[0][0], @board[1][0], @board[2][0]) # left
      return true
    end
    if check_equality(@board[0][0], @board[1][1], @board[2][2]) # left Diagonal
      return true
    end
    if check_equality(@board[0][1], @board[1][1], @board[2][1]) # middle vertical
      return true
    end
    if check_equality(@board[0][2], @board[1][2], @board[2][2]) # right
      return true
    end
    if check_equality(@board[1][0], @board[1][1], @board[1][2) # middle horizontal
      return true
    end
    if check_equality(@board[2][0], @board[2][1], @board[2][2]) # down
      return true
    end
    if check_equality(@board[0][0], @board[0][1], @board[0][2]) # top
      return true
    end
    if check_equality(@board[0][2], @board[1][1], @board[2][0]) # right diagonal
      return true
    end
    false
  end

  def check_equality(first, second, third)
    (first == second) && (second == third) ? true : false
  end

  def display_board
  end

  def all_space_used
  end
end
# game = Game.new
# puts game.check_for_win
