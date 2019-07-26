require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


c1 = Customer.new(first_name: "roby", last_name: "peet")
c2 = Customer.new(first_name: "tony", last_name: "giles")
c3 = Customer.new(first_name: "abby", last_name: "nevin")

r1 = Restaurant.new(name: "ol lady gang")
r2 = Restaurant.new(name: "goobers")
r3 = Restaurant.new(name: "meddie place")

c1.add_review(restaurant:r1, customer: c1, rating: 4, content: "really good")
c2.add_review(restaurant:r2, customer: c2, rating: 1, content: "not good")
c3.add_review(restaurant:r3, customer: c3, rating: 3, content: "meh")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line