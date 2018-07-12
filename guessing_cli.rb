require 'pry'

# Code your solution here!

def run_guessing_game
  comp_number = rand(1..6).to_s
  puts "Guess a number between 1 and 6."
  input = gets.chomp
  if input == "exit"
    puts "Goodbye!"
  end
  
  while input != comp_number || input != "exit"
    puts "The computer guessed #{comp_number}."
    puts "Guess a number between 1 and 6."
    input = gets.chomp
    comp_number = rand(1..6).to_s
    if input == "exit"
      puts "Goodbye!"
      break
    end
  end
  
  if input == comp_number
    puts "You guessed the correct number!"
  end



end