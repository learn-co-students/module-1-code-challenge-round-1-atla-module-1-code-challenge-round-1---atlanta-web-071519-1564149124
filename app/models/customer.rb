class Customer
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  @@all = []
  @@count = 0

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant: restaurant, customer: self, content: content, rating: rating)
    @@count += 1
  end

  def num_reviews
    # count = 0
    # Review.all.each do |review|
    #   if(review.customer == self)
    #     count += 1
    #   end
    # end
    # count
    @@count
  end

  def restaurants 
    Review.all.map do |review|
      if(review.customer == self)
        review.restaurant
      end
    end
  end

  def self.all 
    @@all
  end

  def self.find_by_name(name)
    Customer.all.select do |customer| 
      customer.full_name == name
    end.first
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end



end
