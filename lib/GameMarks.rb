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

  def user_input
    @x = gets.chomp
    @o = gets.chomp
  end

end
