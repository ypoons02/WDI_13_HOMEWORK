### Arrays
#Starting with the following array...
#```rb
planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]
#```

#Access the second value in `planeteers`.
#```rb
# Your answer here
puts planeteers[1]
#```

#Add "Heart" to the end of `planeteers`.
#```rb
# Your answer here
planeteers.insert(-1, "Heart")
puts planeteers
#```

#Remove "Captain Planet" from the array (without using a method).
#```rb
# Your answer here
planeteers.delete_at(2)
puts planeteers
#```

#Combine `planeteers` with `rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]` and save the result in a variable called `heroes`.
#```rb
# Your answer here
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes =  planeteers|rangers
puts heroes
#```

#Alphabetize the contents of `heroes` using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).
#```rb
# Your answer here
heroes = heroes.sort
puts heroes
#```

#Randomize the contents of `heroes` using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).
#```rb
# Your answer here
heroes = heroes.sample(heroes.length)
puts heroes
#```

#### Bonus
#Select a random element from `heroes` using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).

#```rb
# Your answer here
puts heroes.sample(1)
#```

#Select all elements in `heroes` that begin with "B" using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).
#```rb
# Your answer here
puts heroes.select { |str| str.start_with?("B") }
#```

### Hashes
#Initialize a hash called `ninja_turtle` with the properties `name`, `weapon` and `radical`.
#They should have values of "Michelangelo", "Nunchuks" and `true` respectively.

#```rb
# Your answer here
ninja_turtle = { "name" => "Michelangelo", "weapon" => "Nunchuks", "radical" => true }
puts ninja_turtle
#```

#Add a key `age` to `ninja_turtle`. Set it to whatever numerical value you'd like.

#```rb
# Your answer here
ninja_turtle.store("age", 6)
puts ninja_turtle
#```

#Remove the `radical` key-value pair from `ninja_turtle`.
#```rb
# Your answer here
ninja_turtle.delete_if {|key, value| key == "radical" }
puts ninja_turtle
#```

#Add a key `pizza_toppings` to `ninja_turtle`. Set it to an array of strings (e.g., `["cheese", "pepperoni", "peppers"]`).
#```rb
# Your answer here
ninja_turtle.store("pizza_toppings", ["cheese", "pepperoni", "peppers"])
puts ninja_turtle
#```

#Access the first element of `pizza_toppings`.
#```rb
# Your answer here
puts ninja_turtle.fetch("pizza_toppings")
#```

#Produce an array containing all of `ninja_turtle`'s keys using a method. [The Ruby documentation might help](http://ruby-doc.org/core-1.9.3/Hash.html).
#```rb
# Your answer here
puts ninja_turtle.keys
#```

#### Bonus
#Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method. [The Ruby documentation might help](http://ruby-doc.org/core-1.9.3/Hash.html).

#```rb
# Your answer here
puts ninja_turtle.each {|key, value| puts "#{key} is equal to #{value}" }
#```
