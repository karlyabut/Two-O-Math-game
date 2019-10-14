require "./question.rb"
require "./players.rb"

p1 = Players.new("Player1", 3)
p2 = Players.new("Player2", 3)

while p1.life != 0 || p2.life != 0 do
  q = Question.new()
  q.ask_player(p1);
  if q.correct?
    puts "Yes! You are correct!"
    puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
  else
    puts "Seriously! No!"
    p1.life -= 1
    puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
  end
  puts "-----NEW TURN-----"
  q = Question.new()
  q.ask_player(p2);
  if q.correct?
    puts "Yes! You are correct!"
    puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
  else
    puts "Seriously! No!"
    p2.life -= 1
    puts "P1: #{p1.life}/3 vs. P2: #{p2.life}/3"
  end
  puts "-----NEW TURN-----"
  if p1.life == 0 || p2.life == 0
    puts "-----GAME OVER-----"
    puts "Good bye"
  end
end