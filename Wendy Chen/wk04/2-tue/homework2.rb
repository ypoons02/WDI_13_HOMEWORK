### D. Given the following data structure:

#```ruby
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
#```

#1. How would you access Jonathan's Twitter handle (i.e. the string `"tronathan"`)?
#puts users.fetch("Jonathan").fetch(:twitter)

#1. How would you add the number `7` to Erik's favorite numbers?
users["Jonathan"].merge!(favorite_numbers: [12, 42, 75, 7])
puts users

#1. How would you add yourself to the users hash?
users.store("Wendy", {:twitter => "adsfassa",:favorite_numbers => [1, 2, 3]})
puts users

#1. How would you return the array of Erik's favorite numbers?
puts users.fetch("Erik").fetch(:favorite_numbers)

#1. How would you return the smallest of Erik's favorite numbers?
puts users.fetch("Erik").fetch(:favorite_numbers).sort.first

#1. How would you return an array of Anil's favorite numbers that are also even?
favNo =  users.fetch("Anil").fetch(:favorite_numbers)
 favNo.each { |x| puts x if x.even? }

#1. How would you return an array of the favorite numbers common to all users?
favNoA =  users.fetch("Anil").fetch(:favorite_numbers)
favNoB =  users.fetch("Jonathan").fetch(:favorite_numbers)
favNoC =  users.fetch("Erik").fetch(:favorite_numbers)
puts favNoA & favNoB & favNoC

#1. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
favNoAll = (favNoA+favNoB+favNoC).uniq
print favNoAll.sort
