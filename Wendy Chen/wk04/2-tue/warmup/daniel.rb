#Daniel
#Daniel is a lackadaisical teenager. In conversation, his responses are very limited.
#He answers 'Sure.' if you ask him a question. He answers 'Whatever.'
#if you tell him something. He answers 'Woah, chill out!' if you yell at him (ALL CAPS).
#He says 'Fine. Be that way!' if you address him without actually saying anything.

#Write code in ruby so that you can have an interactive conversation with Daniel.
#Make sure you include some testing in order to verify your code.


def askQuestion ()
  puts "Ask question:"
  @question = gets.chomp
end

loop do
  askQuestion
    if @question.include?("?")
      puts "Sure"
    elsif @question.include?(".")
      puts "Whatever";
    elsif @question.upcase == @question
      puts "Woah, chill out!"
    elsif @question.include?("Daniel") == false
      puts "Fine. Be that way!"
    else
    end
end
