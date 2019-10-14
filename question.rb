class Question
  attr_accessor :num1, :num2, :total
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @total = num1 + num2
  end
end