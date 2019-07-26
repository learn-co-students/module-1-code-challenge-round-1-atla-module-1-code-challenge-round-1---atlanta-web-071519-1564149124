class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all 
  end

  def self.find_by_name(full_name_string)
    Customer.all.find{|c| c.full_name == full_name_string}
  end

  def self.find_by_first_name(first_name_string)
    Customer.all.find{|c| c.first_name == first_name_string}
  end

  def self.all_names
    Customer.all.map{|c| c.full_name}
  end

  def initialize(props={})
    self.first_name = props[:first_name]
    self.last_name  = props[:last_name]
    @@all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(props)
    Review.new(props)
  end

  def num_reviews
    Review.all.select do |r| 
      r.customer == self 
    end 
  end

  def restaurants
    cust_reviews = Review.all.select{|r| r.customer == self}
    cust_reviews.map{|r| r.restaurant}
  end


end
