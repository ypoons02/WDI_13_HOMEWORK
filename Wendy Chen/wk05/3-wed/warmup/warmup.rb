#Say it in Hex

#The HBO network show "Silicon Valley" has introduced a way to pronounce hex.

#Kid: Here it is: Bit… soup. It’s like alphabet soup, BUT… it’s ones and zeros
#instead of letters. Bachman: {silence} Kid: ‘Cause it’s binary? You know,
#binary’s just ones and zeroes.
#Bachman: Yeah, I know what binary is. Jesus Christ, I memorized the hexadecimal
#times tables when I was fourteen writing machine code.
#Okay? Ask me what nine times F is. It’s fleventy-five.
#I don’t need you to tell me what binary is. Not "eff five", fleventy. 0xF0 is
#now fleventy. Awesome. Above a full byte you add "bitey" to the name.

#The hexidecimal pronunciation rules:
#HEX PLACE VALUE	WORD 0xA0	“Atta” 0xB0	“Bibbity” 0xC0	“City” 0xD0	“Dickety”
#0xE0	“Ebbity” 0xF0	“Fleventy” 0xA000 "Atta-bitey" 0xB000	"Bibbity-bitey" 0xC000
#"City-bitey" 0xD000	"Dickety-bitey" 0xE000	"Ebbity-bitey" 0xF000
#"Fleventy-bitey" Combinations like 0xABCD are then spelled out "atta-bee bitey
#city-dee".

#For this challenge you'll be given some hex strings and asked to
#pronounce them. Input Description
#You'll be given a list of hex values, one per line.

#0xABCD = atta-bee bitey city-dee
#0xBBBB = bibbity-bee bitey bibbity-bee

require 'pry'

  class Converthex
    @@hex = [{"hex" => "A", "word" => "Atta"},
      {"hex" => "B",	"word" => "Bibbity"},
      {"hex" => "C", "word" => "City"},
      {"hex" => "D",	"word" => "Dickety"},
      {"hex" => "E", "word" => "Ebbity"},
      {"hex" => "F", "word" => "Fleventy"},
      {"hex" => "0", "word" => "bitey"},
      {"hex" => "1", "word" => "one"},
      {"hex" => "2", "word" => "two"},
      {"hex" => "3", "word" => "three"},
      {"hex" => "4", "word" => "four"},
      {"hex" => "5", "word" => "five"},
      {"hex" => "6", "word" => "six"},
      {"hex" => "7", "word" => "seven"},
      {"hex" => "8", "word" => "eight"},
      {"hex" => "9", "word" => "nine"}]

      def self.convertSentence (sentence)

        @output = Array.new
        @outputFinal = Array.new
        @word = sentence.split(" ")

        @word.each do |eachWord|
          @eachWord = eachWord.delete!('0x')
          x = 0
          loop do
            letter =  @eachWord[x]
            convertedLetter = @@hex.find {|x| x["hex"] == letter}
            convertedLetter = convertedLetter["word"]
            @output.push(convertedLetter)
            x = x + 1
            break if x == @eachWord.length
          end #end of loop
        end #end of @.each

        @output.each_slice(2) do |pair|
          @outputFinal.push(pair.join('-'))
        end #end of do

        puts @outputFinal.join(' ')

    end # end of self.convertSentence
  end # end of class

  Converthex.convertSentence ("0xF5 0xB3 0xE4 0xBBBB 0xA0C9")

#Examples:
#0xF5 0xB3 0xE4 0xBBBB 0xA0C9 Output Description
#Your program should emit the pronounced hex.

#Examples from above:
#0xF5 "fleventy-five" 0xB3 “bibbity-three” 0xE4 “ebbity-four” 0xBBBB
#“bibbity-bee bitey bibbity-bee” 0xA0C9 “atta-bitey city-nine”
