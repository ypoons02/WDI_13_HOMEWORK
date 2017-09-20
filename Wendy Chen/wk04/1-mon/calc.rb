#Calculator

#Explanation
#You will be building a calculator. A calculator can perform multiple arithmetic operations.
#Your function should allow the user to choose which operation is expected, enter in the
#values to perform the operation on, and ultimately view the result.
#Specification:

#A user should be given a menu of operations
#A user should be able to choose from the menu
#A user should be able to enter numbers to perform the operation on
#A user should be shown the result
#This process should continue until the user selects a quit option from the menu

#Phase 1
#Calculator functionality
#Calculator should be able to do basic arithmetic (+,-, *, /)

puts "+,-, *, /,^,**"
puts "input number 1:"
a = gets.chomp

puts "+,-, *, /,^,**"
b = gets.chomp

puts "input number 2:"
c = gets.chomp

case b
  when "+"
    puts "results: #{a.to_i + c.to_i}" ;
  when "-"
    puts  "results: #{a.to_i - c.to_i}" ;
  when "*"
    puts "results: #{a.to_i * c.to_i}" ;
  when "/"
    puts "results: #{a.to_i / c.to_i}" ;
  when "^"
    puts "results: #{Math.sqrt(a.to_i)}" ;
  when "**"
    puts "results: #{a.to_i ** c.to_i}" ;
  else
    puts "choose: +,-, *, /,^,** and try again!"
    puts "input number 1:"
    a = gets.chomp

    puts "choose: +,-, *, /,^,**"
    b = gets.chomp

    puts "input number 2:"
    c = gets.chomp
end

#Phase 2
#Advanced Calculator functionality
#Calculator should be able to do basic arithmetic (exponents, square roots)


#Phase 3
#User should be given a menu of Calculator functionality
#User should be able to choose intended functionality

#Optional Extensions
#Does your calculator allows addition of more then 2 numbers in one go? eg: 2 + 3 + 4
