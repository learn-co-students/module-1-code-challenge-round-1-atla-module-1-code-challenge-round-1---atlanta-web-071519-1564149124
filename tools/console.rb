require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lauren = Customer.new(first_name: "Lauren", last_name: "Watts", restaurant: "Fridays", content: "Spring Salad", rating: "B+")
jacob = Customer.new(first_name: "Jacob", last_name: "Latimore", restaurant: "Cheesecake Factory", content: "Creole Food", rating: "A+")
restaurant1 = Restaurant.new(name: "Fridays", customers: lauren, reviews: "This place sucks", average_star_rating: "1 star", longest_reviews: "This is a looooonnnnggg review")
restaurant2 = Restaurant.new(name: "Cheesecake Factory", customers: jacob, reviews: "This place is amazing", average_star_rating: "5 star", longest_review: "Is this long?")
# restaurant1 = Restaurant.new(name: "Fridays")
# restaurant2 = Restaurant.new(name: "Gusto!")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line