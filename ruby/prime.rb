## prime checker
## take in a number and check if it is prime

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
  zero_check
end

def zero_check
  if @number < 0 || @number == 0
    puts "Requires a positive, whole, non-zero integer".red
    puts "Try again: ".yellow
    @number = STDIN.gets.strip.to_i
    zero_check
  elsif @number > 0
    prime_check
  end
end

def prime_check

end

menu
