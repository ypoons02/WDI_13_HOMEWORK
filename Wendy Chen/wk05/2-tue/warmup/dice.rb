#Dice

#Write a program using classes to generate a standard dice roll.
#Dice.roll
# => 6
#It should give you a different result each time.

#Dice.roll
# => 5

#Dice.roll
# => 2

#When you pass in a number, it rolls the dice that many times, and returns you the array of rolled dice
#Dice.roll(3)
# => [2,5,1]

class Dice

  def self.roll(noOFRoll)
    @roll = noOFRoll.to_i
    diceRoll = 0

    loop do
      diceNum = rand(1..12)
      @@results = Array.new
      @@results.push(diceNum)
      puts @@results
      diceRoll = diceRoll + 1
      break if diceRoll == @roll
    end
  end

  def self.sum
    @finalResults = Array.new
    @sumOfResults = 0
    @@results.each do |roll|
      @sumOfResults = @sumOfResults + roll.to_i
      puts @sumOfResults
    end
     @finalResults = [@@results]
  end

end

Dice.roll(3)
Dice.sum

#Extension
#Write a method called sum you can chain directly after Dice.roll(n),
#and will return you the dice and the total, like so:

#Dice.roll(5).sum
# => [[6,6,5,5], 22]

#At first you will get a NoMethodError for a certain ruby class.

#How do you fix this?

#Why do you get a NoMethodError on that class instead of the class you wrote?

#Display die faces after rolling.
#________
#| *  * |
#| *  * |
#________

#extra concepts
class Dice1
  def Dice1.roll
    puts "This is a class method"
  end

  def roll
    puts "This is instance method"
  end
end

Dice1.roll # call a class method

obj = Dice1.new # call an instance method
obj.roll
