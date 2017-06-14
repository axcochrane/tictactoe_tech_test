require_relative './player.rb'
require_relative './board.rb'

class Game

  attr_reader :players, :active_player, :board, :print_board

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
    @board[row][col] = @active_marker 
    @active_player = @players[0] ? @active_player = @players[1] : @active_player = @players[0] 
    @active_marker = 'x' ? @active_marker = 'o' : @active_marker = 'x' 
  end

  def print_board
    puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
    puts "____________"
    puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
    puts "____________"
    puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
  end

end