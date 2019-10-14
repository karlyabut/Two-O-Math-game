class Question
  attr_accessor :num1, :num2, :total, :answer
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @total = num1 + num2
  end

  def ask_player(player)
    puts "#{player.name}: What does #{@num1} plus #{@num2} equal?" 
    @answer = gets.chomp
  end

  def correct?
    @total.to_s == @answer
  end
end