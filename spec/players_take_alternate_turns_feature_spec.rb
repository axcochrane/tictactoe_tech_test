require_relative '../lib/game.rb'

feature 'game' do
  scenario 'players take alternative turns' do
    test_game = Game.new
    expect(test_game.active_player).to equal(test_game.players[0])
    test_game.take_turn(0,0 )
    expect(test_game.active_player).to equal(test_game.players[1])
  end
end