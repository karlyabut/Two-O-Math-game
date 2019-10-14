require "./question.rb"
require "./players.rb"

p1 = Players.new("Player1", 3, true)
p2 = Players.new("Player2", 3, false)

while p1.life != 0 || p2.life != 0 do
  q = Question.new(rand(1...20), rand(1...20))

  if p1.turn == true
    
    p1.turn = true;
    puts "#{p1.name}: What does #{q.num1} plus #{q.num2} equal?"      
    puts q.total
    answer = gets.chomp

    if answer == q.total.to_s
      puts "Yes! You are correct!"
      puts "remain #{p1.life}"
      puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
      p1.turn = false;
    else 
      puts "Seriously! No!"
      p1.life -= 1;
      puts "minus #{p1.life}"
      puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
      p1.turn = false;
    end

  else

    p1.turn = true;
    puts "#{p2.name}: What does #{q.num1} plus #{q.num2} equal?"        
    puts q.total
    answer = gets.chomp

    if answer == q.total.to_s
      puts "Yes! You are correct!"
      puts "remain #{p2.life}"
      puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
    else 
      puts "Seriously! No!"
      p2.life -= 1;
      puts "minus #{p2.life}"
      puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
    end
  end
end