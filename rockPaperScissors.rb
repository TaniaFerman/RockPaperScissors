ROCK = 1
PAPER = 2
SCISSORS = 3
game = 0
@pointsUser = 0
@pointsComputer = 0
def win(userChoice, compChoice)  
  if userChoice == compChoice
    puts "it's a tie"   
  elsif ((userChoice == ROCK) && (compChoice == SCISSORS)) || ((userChoice == PAPER) && (compChoice == ROCK)) || ((userChoice == SCISSORS) && (compChoice == PAPER))
    increment("User")
    puts "User Wins total user points: #{@pointsUser}"
  elsif ((compChoice == ROCK) && (userChoice == SCISSORS)) || ((compChoice == PAPER) && (userChoice == ROCK)) || ((compChoice == SCISSORS) && (userChoice == PAPER))
    increment("Computer")
    puts "Computer Wins total computer points:  #{@pointsComputer}"
  end
end

def increment(gamer)
  if gamer == "User"
    @pointsUser += 1
  else
   @pointsComputer += 1
  end
end

while game < 5
  puts "Choose: rock, paper, scissors" 
  userChoice = gets.chomp.downcase
  puts "your choice: #{userChoice}"
  userChoice = userChoice
    case userChoice
    when "rock"
      userChoice = ROCK
    when "paper"
      userChoice = PAPER
    when "scissors"
      userChoice = SCISSORS  
    else
      puts "please choose between rock, paper or scissors"  
      userChoice = nil
    end 
  print "computer choice: " 
  compChoice = rand(1..3) 
    case compChoice
    when ROCK
      puts "rock"
    when PAPER
      puts "paper"
    when SCISSORS
      puts "scissors"  
    end  
  win(userChoice, compChoice)
  game += 1
  puts "------------------------"
end

if @pointsUser > @pointsComputer
  puts "User won! total points user #{@pointsUser}"
elsif @pointsUser < @pointsComputer
  puts "Computer Won! total points computer #{@pointsComputer}"
else
  puts "It's a tie total points user #{@pointsUser}, total points computer #{@pointsComputer}"
end


  



    