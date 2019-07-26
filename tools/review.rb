Class Review
    @@reviews = []
    attr_accessor :rating,:review
    attr_reader :customer,:restaurant, 
    def initialize(customer,restaurant)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @review = review
        @@reviews << self
    end



    def self.all
        @@reviews 

    end