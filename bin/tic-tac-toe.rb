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

  attr_accessor :x_or_o
  attr_accessor :place

  def initialize
    @x_or_o
    @place
  end

  def player_prompt
    game_card = GameCard.new
    puts "Please choose an (X) or (O) to play, Player1! > "

    x_or_o = gets.chomp.upcase
    until x_or_o == "X" || x_or_o == "O"
      puts "Please actually choose an (X) or (O) you chose #{x_or_o.inspect} to play, Player1! > "
      x_or_o = gets.chomp.upcase
    end


    # x = 0
    # # number of times allowed to play on the board
    # if game_card.array_length > 9 || game_card.array_length < 0 # makes sure you're playing within the matrix
    #   game_card.gamecard
    #   puts "Pick another spot to play on! (Choose between 0 and 8) > "
    #   place = gets.chomp.to_i
    #   game_card.user_input_on_board(place, x_or_o)
    #   x += 1
    # else
      game = Game.new
      until game.winning_combo(game_card.gameboard)
        game_card.gamecard
        puts "Where would you like to play? (Choose between 0 and 8) > "
        place = gets.chomp.to_i
        #check that place is on game_card
        game_card.user_input_on_board(place, x_or_o)
        # puts player_input.gameboard - spits out updated gameboard array
        # x += 1
      # end
    end
  end
end

class Game

  def initialize
  end

  def winning_combo(gameboard_array)
    case
    when (gameboard_array[0] == "X" && gameboard_array[1] == "X" && gameboard_array[2] == "X") ||
         (gameboard_array[0] == "O" && gameboard_array[1] == "O" && gameboard_array[2] == "O")
      puts "You have won tic-tac-toe!"
    else
      puts "Keep going!"
    end
  end

end

player1 = Player.new
player1.player_prompt

 # binding.pry
