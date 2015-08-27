require 'pry'

class GameMarks

  def initialize
    @marks = ["X", "O"]
  end

  def draw
    @marks.sample
  end
end

class Game_card

  def initialize
    @gamecard = Array.new
  end
end

player1_draw = Game_marks.new
player2_draw = Game_marks.new
player1 = player1_draw.draw
player2 = player2_draw.draw

binding.pry
