require 'colorize'
require 'pry'

@word = []
@reverse = []

def menu
  print `clear`
  puts "----PALINDROME CHECKER----".green
  puts "I can check to see if a word is a palindrome!".green
  puts "Enter the word you'd like to check: "
  @word = STDIN.gets.strip.downcase.gsub(" ", "").split("")
  check
end

def check
  @word.each {|letter| @reverse.unshift(letter) }
  if @word == @reverse
    puts "Your entry is indeed a palindrome."
  else
    puts "Nope."
  end
end
menu
