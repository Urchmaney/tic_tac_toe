# frozen_string_literal: true

require './lib/game'

RSpec.describe Game do
    describe '#check_for_win' do
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='123'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='456'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='789'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='147'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='258'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='369'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='159'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='357'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='1253'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='1999'
        expect(game.check_for_win(game.player1)).to eql(true)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='193'
        expect(game.check_for_win(game.player1)).to eql(false)
      end
      it 'returns true if player has winning moves' do
        game = Game.new('Mike','John')
        game.player1.moves='188883'
        expect(game.check_for_win(game.player1)).to eql(false)
      end
    end
  end
  