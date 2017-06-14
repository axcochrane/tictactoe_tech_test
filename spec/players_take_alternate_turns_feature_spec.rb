require_relative '../lib/game.rb'

feature 'game' do
  scenario 'players take alternative turns' do
    test_game = Game.new
    expect(test_game.active_player).to equal(test_game.player_1)
    test_game.take_turn
    expect(test_game.active_player).to equal(test_game.player_2)
  end
end