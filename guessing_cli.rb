require 'pry'

# Code your solution here!

def run_guessing_game
  comp_number = rand(1..6)
  puts "Guess a number between 1 and 6."
  input = gets.chomp
  binding.pry
  if input == "exit"
    puts "Goodbye!"
  end
  
  while input != comp_number
    puts "The computer guessed #{comp_number}."
    puts "Guess a number between 1 and 6."
    input = gets.chomp
    comp_number = rand(1..6)
    if input == "exit"
      puts "Goodbye!"
      break
    end
  end
  
  if input == comp_number
    puts "You guessed the correct number!"
  end

end