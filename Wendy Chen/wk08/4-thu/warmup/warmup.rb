#Scrabble Score

#Write a program that, given a word, computes the scrabble score for that word.

#Scrabble.score("cabbage")
## => 14
#Your program should be in a file named scrabble.rb.

#Letter Values
#Letter                           Value
#A, E, I, O, U, L, N, R, S, T       1
#D, G                               2
#B, C, M, P                         3
#F, H, V, W, Y                      4
#K                                  5
#J, X                               8
#Q, Z                               10

#Extensions
#You can play a :double or a :triple letter.
#You can play a :double or a :triple word.

class Scrabble
  def initialize(word)
    # Instance variables
    @scrabble_word = word.upcase.to_s.split("")
    @score_list = {"A" => 1, "E" => 1, "O"  => 1, "U"  => 1, "L"  => 1, "N"  => 1, "R"  => 1, "S"  => 1, "T"  => 1,
                   "D" => 2, "G" => 2,
                   "B" => 3, "C" => 3, "M" => 3, "P" => 3,
                   "F"=> 4, "H"=> 4, "V"=> 4, "W"=> 4, "Y"=> 4,
                   "K"=> 5,
                   "J"=> 8, "X"=> 8,
                   "Q"=> 10, "Z" => 10
                   }
  end

  def score
    value = 0
    @scrabble_word.each do |letter|
      value = value + @score_list[letter]
    end
      puts value
  end
end

play = Scrabble.new("cabbage")
play.score
