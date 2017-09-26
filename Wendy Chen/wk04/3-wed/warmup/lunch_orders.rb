#Lunch Orders

#It's approaching lunch hour… let's collect orders.
#Create a new file called lunch_orders.rb to complete this exercise.

#Create a program that collects lunch orders. Prompt:
#Name for order: (enter name)
#{name} wants to order: (enter item)

#Store the name/order data. When storing data, do it in such a way that
#additional order items may be added for the person's name.
#Example: Greg can order a Burger, and then add Fries to his order later.

#After storing data, prompt the user with:
#Add another item to the order? (y/n)

#Repeat steps 1 & 2 if the answer is "y"

#After the user completes adding orders, print out:
#"All orders: {order data}"
#Keep going...

#Rather than printing out a blob of raw lunch order data, print each name's orders
#on a separate line, formatted as one of the following:

#"Greg ordered a sandwich"
#"Peter ordered a burger & fries"
#"Travis ordered a salad, apple & water"
#You may have to do some hunting in Ruby docs!

class OrderMyLunch
  @@foodList = Array.new
  @@orderList = Array.new

  nameForEachOrder = Proc.new do
    puts "Name for order:"
    @name = gets.chomp
  end

  foodForEachOrder = Proc.new do
    puts "#{@name} wants to order: (enter item)"
    @food = gets.chomp
    @@foodList.push(@food)
  end

  orderMore = Proc.new do
    puts "Add another item to the order? (y/n)"
    @orderMore = gets.chomp
  end

 contOrder = Proc.new do
    puts "Continue Order for next person? (y/n)"
    @contOrder = gets.chomp
  end

  loop do

    nameForEachOrder.call

    loop do
      foodForEachOrder.call
      orderMore.call
      break if @orderMore=="n"
    end

    @@orderList.push({name:@name, food:@@foodList})
    @@foodList = []

    contOrder.call
    break if @contOrder=="n"

  end

  @@orderList.each do |order|

    nameOfPerson = order[:name]
    itemsOfOrder = order[:food]
    *items, last = itemsOfOrder

    if itemsOfOrder.length > 1
      items = "#{items.join(",")} & #{last}."
    else
      items = "#{last}."
    end

    puts " #{nameOfPerson} ordered a #{items}."

  end

  @@foodList = []
  @@orderList = []

end
