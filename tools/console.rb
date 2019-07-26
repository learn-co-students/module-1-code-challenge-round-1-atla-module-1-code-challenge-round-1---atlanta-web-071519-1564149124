require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

class Customer
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.name == name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    count = 0
    Review.all.each do |review|
      if review.customer == self
        count+=1
      end
    end
    count
  end

  def restaurants
    array = []
    Review.all.each do |review|
      if review.customer == self
        array << review.restaurant
      end
    end
    array
  end

end

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    array = []
    Review.all.each do |review|
      if review.restaurant == self
        array << review.customer
      end
    end
    array
  end

  def reviews
    Review.all.select do |review|
      if review.restaurant == self
        review
      end
    end
  end
end

class Review
  attr_accessor :customer, :restaurant, :content, :rating
  @@all = []
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end
  def self.all
    @@all
  end
end

john = Customer.new("John")
raza = Customer.new("Raza")
outback = Restaurant.new("Outback")
five_guys = Restaurant.new("Five Guys")
john.add_review(outback, "This place is great", 5)
raza.add_review(five_guys, "I like the burgers", 4)
john.add_review(five_guys, "The meat wasn't as good as Outback's", 3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line