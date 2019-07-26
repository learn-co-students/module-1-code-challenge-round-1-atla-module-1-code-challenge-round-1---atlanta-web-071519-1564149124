class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all 
  end

  def self.find_by_name(name_string)
    Restaurant.all.find{|r| r.name == name_string}
  end 

  def initialize(props={})
    self.name = props[:name]
    @@all << self 
  end

  def customers
    self.reviews.map{|r| r.customer}
  end

  def reviews
    Review.all.select{|r| r.restaurant == self}
  end

  def average_star_rating
    self.reviews.map{|r| r.rating}.sum / self.reviews.map{|r| r.rating}.length 
  end

  def longest_review
    long_review = self.reviews.map{|r| r.content.length}.max
    self.reviews.find{|r| r.content.length == long_review}
  end



end
