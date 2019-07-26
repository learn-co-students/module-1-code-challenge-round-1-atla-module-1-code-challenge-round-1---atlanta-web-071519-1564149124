class Review
    attr_reader :restaurant, :customer, :content, :rating

    def initialize(props= {})
    @restaurant = props[:restaurant]
    @customer = props[:customer]
    @content = props[:content]
    @rating = props[:rating]
    @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

end

