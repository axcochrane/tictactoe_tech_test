require_relative '../lib/game.rb'

feature 'start game' do
  scenario 'a Game has two players' do
    test_game = Game.new
    expect(test_game.players[0]).to be_a(Player)
    expect(test_game.players[1]).to be_a(Player)
  end
end