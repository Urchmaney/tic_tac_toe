# frozen_string_literal: true

require './lib/game'

RSpec.describe(Game) do
  let(:game) { Game.new('Mike', 'John') }

  describe '#check_for_win' do
    it 'returns true if player has winning moves' do      
      game.player1.moves = '123'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '456'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '789'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '147'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '258'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '369'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '159'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '357'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '1253'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns true if player has winning moves' do
      game.player1.moves = '1959'
      expect(game.check_for_win(game.player1)).to eql(true)
    end
    it 'returns false if does not player has winning moves' do
      game.player1.moves = '193'
      expect(game.check_for_win(game.player1)).to eql(false)
    end
    it 'returns false if does not player has winning moves' do
      game.player1.moves = ''
      expect(game.check_for_win(game.player1)).to eql(false)
    end
    it 'returns false if does not player has winning moves' do
      game.player1.moves = '8543'
      expect(game.check_for_win(game.player1)).to eql(false)
    end
    it 'Raises an exception for wrong number of argument supplied.' do
      game.player1.moves = '183'
      expect{game.check_for_win(game.player1,4)}.to raise_error(ArgumentError)
    end
    it 'Raises an exception for wrong argument supplied.' do
      game.player1.moves = '183'
      expect{game.check_for_win(game)}.to raise_error(NoMethodError)
    end
  end
end
