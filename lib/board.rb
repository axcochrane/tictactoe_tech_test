class Board

  attr_reader :playing_area

  def initialize
    @playing_area = [
            [[],[],[]],
            [[],[],[]],
            [[],[],[]]
            ]
  end

end