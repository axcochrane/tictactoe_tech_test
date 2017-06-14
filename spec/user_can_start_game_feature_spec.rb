feature 'start game' do
  scenario 'user can start a game of tictactoe' do
    game = Game.new
    expect(game).to be_a(Game)
  end
end