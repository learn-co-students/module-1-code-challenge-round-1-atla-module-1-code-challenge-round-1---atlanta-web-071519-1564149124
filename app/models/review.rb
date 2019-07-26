class Review
    @@all = []

    def self.all
        @@all 
    end

    def initialize(props={})
        @customer = props[:customer]
        @restaurant = props[:restaurant]
        @rating = props[:rating]
        @content = props[:content]
        @@all << self 
    end

    def customer
        @customer
    end

    def restaurant
        @restaurant 
    end

    def rating
        @rating 
    end

    def rating=(star_number)
        @rating = star_number
    end

    def content
        @content
    end

    def content=(content_text)
        @content = content_text
    end
  
end

