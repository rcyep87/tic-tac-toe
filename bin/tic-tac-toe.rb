require 'pry'

class GameMarks

  def initialize
    @x = "X"
    @o = "O"
  end

  def markx
    @x
  end

  def marko
    @o
  end

end

class GameCard

  def initialize
    @gamecard = ["X", "X", "X", "O", "O", "O", "O", "O", "O"]
  end

  def gamecard
    puts "------------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@gamecard[0]}       |        #{@gamecard[1]}       |       #{@gamecard[2]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@gamecard[3]}       |        #{@gamecard[4]}       |       #{@gamecard[5]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@gamecard[6]}       |        #{@gamecard[7]}       |       #{@gamecard[8]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
  end
end

# player1 = GameMarks.new
# player2 = GameMarks.new

# puts player1.markx
# puts player2.marko

card = GameCard.new
puts card.gamecard


binding.pry
