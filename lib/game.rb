# frozen_string_literal: true

class Game #:nodoc:
  attr_reader :space_used
  attr_reader :player
  def initialize
    @board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
    @player = 1
    @space_used = 0
    @moves_player1 = ""
    @moves_player2 = ""
  end

  def check_for_win(player_flag)
    winners = ["123","456","789","147","258","369","159","357"]
    if player_flag == 1
      moves = @moves_player2
    else
      moves = @moves_player1
    end
    if moves.length > 3
      moves = moves[moves.length - 4, moves.length - 1]
    end
    winners.include?(moves)
  end

  def display_board
    @board.each_with_index do |row, row_index|
      row_string=" "
      row.each_with_index do |element, index|
        row_string += " | " if index != 0
        row_string += element
      end
      puts row_string
      puts "-----------" if row_index != 2
    end
  end

  def make_move(index)
    @space_used += 1
    if @player == 1
      @board[(index.to_i-1)/3.floor][(index.to_i-1)%3] = "X"
      @moves_player1 += index
      @player = 2
    else
      @board[(index.to_i-1)/3.floor][(index.to_i-1)%3] = "O"
      @moves_player2 += index
      @player = 1
    end
  end
end
# game = Game.new
# puts game.check_for_win
