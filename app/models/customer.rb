class Customer
  attr_accessor :restaurant, :content, :rating, :review
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(props={})
    @first_name = props[:first_name]
    @last_name  = props[:last_name]
    @restaurant = props[:restaurant]
    @content = props[:content]
    @rating = props[:rating]
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)

  end

  def restaurants(restaurant)
    restaurant.all.select do |restaurant|
      restaurant.customer == self
  end

end
