require_relative '../lib/game.rb'

feature 'start game' do
  scenario 'user can start a game of tictactoe' do
    test_game = Game.new
    expect(test_game).to be_a(Game)
  end
end