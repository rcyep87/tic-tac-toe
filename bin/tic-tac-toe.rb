 # require 'pry'

class GameCard

  def initialize
    @gamecard = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    @x_or_o
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

  def user_input_on_board(index, x_or_o)
    @gamecard[index] = x_or_o.to_s.upcase
  end

  def array_length
    @gamecard.length
  end

end

class Player

  def initialize
    @x_or_o
    @place
  end

  def player_prompt
    player_input = GameCard.new
      puts "Please choose an (X) or (O) to play, Player1! > "
      x_or_o = gets.chomp.upcase

    if x_or_o != ("X" || "O")
      puts "Please actually choose an (X) or (O) to play, Player1! > "
      x_or_o = gets.chomp.upcase
    elsif x_or_o = ("X" || "O")
      puts "Would you like to be (X) or (O) today, Player 1 > ?"
      x_or_o = gets.chomp.upcase # include everything in the while loop below
    end

    x = 0
    while x < 8
      if player_input.array_length > 9 # makes sure you're playing within the matrix
        puts "pick another spot to play on! (0..8)"
        player_input.gamecard
        puts "Where would you like to play? (Choose between 0 and 8) > "
        place = gets.chomp.to_i
        player_input.user_input_on_board(place, x_or_o)
        x += 1
      else
        player_input.gamecard
        puts "Where would you like to play? (Choose between 0 and 8) > "
        place = gets.chomp.to_i
        player_input.user_input_on_board(place, x_or_o)
        # player_input.gamecard
        x += 1
      end
    end
  end
end

# count = GameCard.new
# puts count.array_length Communicates length of array

player1 = Player.new
player1.player_prompt


# # user input
# player_input = GameCard.new
# puts "Would you like to be (X) or (O) today, Player 1 > ?"
# x_or_o = gets.chomp

# puts "Where would you like to play? (Choose between 1 and 9) > "
# place = gets.chomp.to_i
# player_input.user_input_on_board(place, x_or_o)
# player_input.gamecard

# puts "Where would you like to play? (Choose between 1 and 9) > "
# place = gets.chomp.to_i
# player_input.user_input_on_board(place, x_or_o)
# player_input.gamecard

# puts "Where would you like to play? (Choose between 1 and 9) > "
# place = gets.chomp.to_i
# player_input.user_input_on_board(place, x_or_o)
# player_input.gamecard

# if (player_input.gamecard[1] && player_input.gamecard[2] && player_input.gamecard[3] == "X")
#   player_input.gamecard
#   puts "We have a winner!"
# else
#   puts "Keep playing!"
# end

# when (player_input.gamecard[1] && player_input.gamecard[2] && player_input.gamecard[3] == "X") || (player_input.gamecard[1] && player_input.gamecard[2] && player_input.gamecard[3] == "O")
#   puts "We have a winner!"
# else
#   puts "Keep playing!"
# end

 # binding.pry
