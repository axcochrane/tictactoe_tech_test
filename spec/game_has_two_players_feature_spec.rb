require_relative '../lib/game.rb'

feature 'start game' do
  scenario 'a Game has two players' do
    test_game = Game.new
    expect(test_game.player_1).to be_a(Player)
    expect(test_game.player_2).to be_a(Player)
  end
end