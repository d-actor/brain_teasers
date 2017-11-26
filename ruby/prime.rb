## prime checker
## take in a number and check if it is prime

# prime check logic
# output result

require "pry"
require "colorize"

@x = 2

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
  elsif @number == 1 or @number == 2
    puts "Pretty basic prime there, friend!".green
  elsif @number > 0
    prime_check
  end
end

def prime_check
  if @number % @x == 0
    puts "Not a prime.".red
  elsif @number % @x != 0
    if @x < @number - 1
      @x += 1
      prime_check
    else
      puts "It is a prime indeed!".green
    end
  end
end

menu
