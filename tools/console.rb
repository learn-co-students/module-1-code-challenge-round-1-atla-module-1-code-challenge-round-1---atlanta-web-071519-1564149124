require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jon = Customer.new("jon", "boss")
will = Customer.new("will", "trimble")
mick = Customer.new("Mick", "Stone")

cfa = Restaurant.new("Chic-fil-A")
willys = Restaurant.new("Willys")
rumis = Restaurant.new("Rumis")

# review = Review.new(customer: jon, restaurant: cfa)




mick.add_review(cfa, "food was meh", 2)
will.add_review(cfa, "food was okay", 4)

jon.add_review(cfa, "food was greatly awesome and gorgeous", 5)
jon.add_review(rumis, "huge portions", 5)
jon.add_review(willys, "chipotle is better", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line