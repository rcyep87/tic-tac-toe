# require 'pry'

# class GameMarks

#   def initialize
#     @x = "X"
#     @o = "O"
#   end

#   def markx
#     @x
#   end

#   def marko
#     @o
#   end

# end

class GameCard

  def initialize
    @gamecard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @input
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

  def user_input_on_board(index, value)
    @gamecard[index] = value.to_s
  end
end

# card = GameCard.new - checks to see if spots on board have been assigned #'s'
# puts card.gamecard

# input = GameCard.new
# input.user_input_on_board(1, "X") => this logic puts X's and O's on the game board
# puts input.gamecard => prints out an updated status of game board
# input.user_input_on_board(8, "O")
# puts input.gamecard
# input.user_input_on_board(4, "X")
# puts input.gamecard
# input.user_input_on_board(7, "X")
# puts input.gamecard


# print "Where would you like to play? (0..8) and (X or O) > "
# input = gets.chomp



# binding.pry
