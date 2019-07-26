class Review
  attr_accessor :customer, :restaurant
    @@all = []

    def initialize(props={})
        @customer = props[:customer]
        @restaurant = props[:restaurant]
        @@all << self
    end

    def self.all
        @@all
    end

end

