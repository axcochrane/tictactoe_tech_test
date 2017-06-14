require_relative './player.rb'
require_relative './board.rb'

class Game

  attr_reader :player_1, :player_2, :players, :active_player, :board

  def initialize(players = [Player.new, Player.new])
    @players = players
    @active_player = @players[0]
    @active_marker = 'x'
    @board = Board.new.playing_area
  end

  def take_turn(row, col)
    if @board[row][col] != []
      raise "square is taken already!" 
    end
    @board[row, col] = @active_marker 
    @active_player = @players[0] ? @active_player = @players[1] : @active_player = @players[0] 
    @active_marker = 'x' ? @active_marker = 'o' : @active_marker = 'x' 
  end

end