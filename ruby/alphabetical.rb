require "pry"
require "colorize"

@alph_order = []

def menu
  print `clear`
  puts "---ALPHABETICAL ORDER---".yellow
  puts "I can sort your input into alphabetical order".yellow
  puts "Enter your input : "
  @input = STDIN.gets.strip.downcase.gsub(" ", "").split("")
  alph_order
end

def alph_order
  @input.each do |letter|
    if letter == "a"
      letter = {letter: "a", value: 1}
      @alph_order.push(letter)
    elsif letter == "b"
      letter = {letter: "b", value: 2}
      @alph_order.push(letter)
    elsif letter == "c"
      letter = {letter: "c", value: 3}
      @alph_order.push(letter)
    elsif letter == "d"
      letter = {letter: "d", value: 4}
      @alph_order.push(letter)
    elsif letter == "e"
      letter = {letter: "e", value: 5}
      @alph_order.push(letter)
    elsif letter == "f"
      letter = {letter: "f", value: 6}
      @alph_order.push(letter)
    elsif letter == "g"
      letter = {letter: "g", value: 7}
      @alph_order.push(letter)
    elsif letter == "h"
      letter = {letter: "h" , value: 8}
      @alph_order.push(letter)
    elsif letter == "i"
      letter = {letter: "i" , value: 9}
      @alph_order.push(letter)
    elsif letter == "j"
      letter = {letter: "j" , value: 10}
      @alph_order.push(letter)
    elsif letter == "k"
      letter = {letter: "k" , value: 11}
      @alph_order.push(letter)
    elsif letter == "l"
      letter = {letter: "l" , value: 12}
      @alph_order.push(letter)
    elsif letter == "m"
      letter = {letter: "m" , value: 13}
      @alph_order.push(letter)
    elsif letter == "n"
      letter = {letter: "n", value: 14}
      @alph_order.push(letter)
    elsif letter == "o"
      letter = {letter: "o" , value: 15}
      @alph_order.push(letter)
    elsif letter == "p"
      letter = {letter: "p" , value: 16}
      @alph_order.push(letter)
    elsif letter == "q"
      letter = {letter: "q" , value: 17}
      @alph_order.push(letter)
    elsif letter == "r"
      letter = {letter: "r" , value: 18}
      @alph_order.push(letter)
    elsif letter == "s"
      letter = {letter: "s" , value: 19}
      @alph_order.push(letter)
    elsif letter == "t"
      letter = {letter: "t" , value: 20}
      @alph_order.push(letter)
    elsif letter == "u"
      letter = {letter: "u" , value: 21}
      @alph_order.push(letter)
    elsif letter == "v"
      letter = {letter: "v" , value: 22}
      @alph_order.push(letter)
    elsif letter == "w"
      letter = {letter: "w" , value: 23}
      @alph_order.push(letter)
    elsif letter == "x"
      letter = {letter: "x" , value: 24}
      @alph_order.push(letter)
    elsif letter == "y"
      letter = {letter: "y" , value: 25}
      @alph_order.push(letter)
    elsif letter == "z"
      letter = {letter: "z" , value: 26}
      @alph_order.push(letter)
    end
  end
  @alph_order.sort_by! { |hsh| hsh[:value] }

  @alph_order.each do |hsh|
    puts "#{hsh[:letter]}".red + " \n"
  end
end

menu
