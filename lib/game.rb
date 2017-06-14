require 'player'
require 'board'

class Game

  attr_reader :player_1, :player_2, :players, :active_player

  def initialize(players = [Player.new, Player.new])
    @players = players
    @active_player = @players[0]
    @board = Board.new
  end

  def take_turn
    @active_player = @players[0] ? @active_player = @players[1] : @active_player = @players[0] 
  end

end