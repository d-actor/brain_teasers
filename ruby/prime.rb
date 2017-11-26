## prime checker
## take in a number and check if it is prime

# menu
# get user input
# prime check logic
# output result

require "pry"
require "colorize"

def menu
  print `clear`
  puts "---PRIME CHECKER---".yellow
  puts "Check if a number is prime".yellow
  puts "*Must be a whole, positive, non zero integer*"
  puts "Enter the number: ".yellow
  @number = STDIN.gets.strip.to_i
end

def prime_check
  
end

menu
