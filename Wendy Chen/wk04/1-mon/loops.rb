#Title: Guess The Number

#Activity:
#You are to generate a basic "guess my number" game.
#The computer will pick a random number between 0 and 10.
#The user will guess the number until they guess correctly.


#puts "Enter a number";
#a = gets.chomp
#b = Random.new.rand(0..10)

#while a.to_i != b do
#   puts "Keep guessing. Enter a number:";
#   a = gets.chomp
#end

#puts "YAY! the number is: #{b}"

#Specification:
#The user should be asked to guess a number
#If the user's guess is correct, the user should see a congratulatory message
#If the user's guess is not correct, the user should be asked to guess the number again.

#Extensions:
#Let the user choose the maximum value (so they can play a long game with a random
#value between 0 and 10000, for example).
#Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"

puts "Enter a number";
a = gets.chomp
b = Random.new.rand(0..10000)

while a.to_i != b do
  if a.to_i > b
    puts "Wrong, guess lower. Enter a number:"
  else
    puts "Wrong, guess higher. Enter a number:"
  end
   a = gets.chomp
end

puts "YAY! the number is: #{b}"
