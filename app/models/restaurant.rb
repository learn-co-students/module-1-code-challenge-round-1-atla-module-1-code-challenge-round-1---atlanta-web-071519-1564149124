class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def customers
    self.reviews.map {|review| review.customer}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  # couldn't limit to 2 decimals
  def average_star_rating
    ratings = []
    self.reviews.each do |review|
        ratings << review.rating
    end

    x = ratings.sum
    y = ratings.length
    avg = x.to_f / y
    avg
  end

  def longest_review
    ary = self.reviews
    ary.sort_by do |review|
      review.content.length
    end

    ary[ary.length-1].content
  end

  def self.all 
    @@all 
  end

  def self.find_by_name(name)
    Restaurant.all.select do |restaurant|
      restaurant.name == name
    end.first
  end





end
