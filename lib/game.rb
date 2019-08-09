# frozen_string_literal: true

class Game #:nodoc:
  attr_reader :space_used
  attr_reader :player1
  attr_reader :player2
  attr_reader :board

  def initialize(player_1_name, palyer_2_name)
    @board = Board.new
    @player1 = Player.new(player_1_name, 'X')
    @player2 = Player.new(palyer_2_name, 'O')
  end

  def check_for_win(player)
    winners = %w[123 456 789 147 258 369 159 357]
    moves = player.moves
    # moves = moves[moves.length - 3..moves.length - 1] if moves.length > 3
    winners.any? do |element|
      check = 0
      moves.each_char do |char|
        check += 1 if element.include?(char)
      end
      check == 3
    end
  end

  def make_move(index, player)
    @board.space_used += 1
    @board.register_play(((index.to_i - 1) / 3.floor), ((index.to_i - 1) % 3), player.letter_assigned)
    player.moves += index
  end
end

class Player #:nodoc:
  attr_reader :letter_assigned
  attr_accessor :moves
  attr_reader :name

  def initialize(name, letter_assigned)
    @name = name
    @letter_assigned = letter_assigned
    @moves = ''
  end
end

class Board #:nodoc:
  attr_reader :array
  attr_accessor :space_used

  def initialize
    @array = [%w[1 2 3], %w[4 5 6], %w[7 8 9]]
    @space_used = 0
  end

  def register_play(row, column, letter)
    @array[row][column] = letter
  end
end
# game = Game.new
# puts game.check_for_win
