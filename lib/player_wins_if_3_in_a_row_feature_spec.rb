require_relative '../lib/game.rb'

feature 'Game' do
  scenario 'a player wins if they get 3 in a row' do
    game = Game.new
    game.take_turn(0,2)
    # test_game.take_turn(1,0)
    # test_game.take_turn(0,1)
    # test_game.take_turn(2,0)
    # test_game.take_turn(0,2)
    expect(test_game.status).to eq("#{players[1]} win")
  end
end