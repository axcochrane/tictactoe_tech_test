require_relative '../lib/game.rb'

feature 'Game' do
  scenario 'a player can place their mark on the board' do
    test_game = Game.new
    test_game.take_turn(0,0)
    expect(test_game.board[0][0]).to eq('x')
  end
end