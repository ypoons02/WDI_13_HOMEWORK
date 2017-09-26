
#require 'filename'
#We use require_relative for this because the location of the file we're loading
#is relative to the file we're loading it from - they're both in the same directory.
require_relative 'monkey'

adam = Monkey.new("Adam", "Spider Monkey")
adam.eat('fruit salad')
adam.eat('banana milkshake')
adam.introduce
