require_relative '../lib/game.rb'

feature 'Game' do
  scenario 'a player wins if they get 3 in a row' do
    test_game = Game.new
    test_game.take_turn(0,0)
    test_game.take_turn(1,0)
    test_game.take_turn(0,1)
    test_game.take_turn(2,0)
    test_game.take_turn(0,3)
    expect(test_game.status).to eq("#{players[2]} win")
  end
end