#Say it in English

#Write a program that will take a number from 0 to 99 and spell out that number in English.

#In other words, if the input to the program is 22, then the output should be 'twenty-two'

#e.g.
#Say.new(22).in_english
#Say.new(-1).in_english
# say.rb:7:in 'in_english': Number must be between 0 and 99, inclusive. (ArgumentError)
#The program must also report any values that are out of range.

#Some good test cases for this program are:
#0
#14
#50
#98
#-1
#100

#Extensions
#Re-write the method for the Fixnum class.

# number = '23'
# ones_digit = number.split('')[1] # 3
# twenty_plus = number.split('')[0] # 2
#
# tens[tens_digit-2]
# ones = ['one', 'two', 'three']
# tens = ['', '', 'twenty', 'thirty', 'fourty']

class Say
  @@ones = { 1 => "one", 2 => "two", 3 => "three" ,
              4 => "four", 5 => "five", 6 => "six", 7 => "seven",
              8 => "eight", 9 => "nine", 10 => "ten",
              11 => "eleven", 12 => "twelve", 13 => "thirteen",
              14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
              17 => "seventeen", 18 => "eighteen", 19 => "nineteen"
             }

  @@twenty_plus = {2 => "twenty", 3 => "thirty", 4 => "fourty",
              5 => "fifty", 6 => "sixty", 7 => "seventy",
              8 => "eighty", 9=> "ninety"
             }

  def initialize(num)
    @num = num.to_i
  end

  def in_english
    if @num > 19
      twenty_plus = @num.digits[0]
      ones_digit = @num.digits[1]
      result = "#{@@twenty_plus[ones_digit]} #{@@ones[twenty_plus]}"
    else
      result = @@ones[@num]
    end
  end

end

puts Say.new(22).in_english
