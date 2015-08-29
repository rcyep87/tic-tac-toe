 # require 'pry'

class GameCard

  attr_accessor :gameboard

  def initialize
    @gameboard = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    @x_or_o
  end

  def gamecard
    puts "------------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@gameboard[0]}       |        #{@gameboard[1]}       |       #{@gameboard[2]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@gameboard[3]}       |        #{@gameboard[4]}       |       #{@gameboard[5]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@gameboard[6]}       |        #{@gameboard[7]}       |       #{@gameboard[8]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
  end

  def user_input_on_board(index, x_or_o)
    @gameboard[index] = x_or_o.to_s.upcase
  end

  def array_length
    @gameboard.length
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

    while x_or_o != ("X" || "O")
      puts "Please actually choose an (X) or (O) to play, Player1! > "
      x_or_o = gets.chomp.upcase
    end

    x = 0
    while x < 8 && x >= 0
      if player_input.array_length > 9 # makes sure you're playing within the matrix
        puts "pick another spot to play on! (0..8)"
        player_input.gamecard
        puts "Where would you like to play? (Choose between 0 and 8) > "
        place = gets.chomp.to_i
        player_input.user_input_on_board(place, x_or_o)
        puts gamecard
        x += 1
      else
        player_input.gamecard
        puts "Where would you like to play? (Choose between 0 and 8) > "
        place = gets.chomp.to_i
        player_input.user_input_on_board(place, x_or_o)
        # puts player_input.gameboard - spits out updated gameboard array
        x += 1
      end
    end
  end
end

class Game

  def initialize
  end

  def winning_combo
    choice = GameCard.new
    puts choice.choice_array
  end

end

player1 = Player.new
player1.player_prompt

 # binding.pry
