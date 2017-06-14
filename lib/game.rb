require 'player'

class Game

  attr_reader :player_1, :player_2, :players, :active_player

  def initialize (player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
    @active_player = @players[0]
  end

  def take_turn
    @active_player = @player_1 ? @active_player = @player_2 : @active_player = @player_1 
  end

end