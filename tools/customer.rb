class Customer 
    @@customers = []

    attr_accessor :name, :content, :rating
    def initialize(name,content,rating)
        @name = name
        @content = content
        @rating = rating
        @@customers << self
    end


    def self.all
        @@customers
    end

    def self.find_by_name(name)
        Customer.all.find{|customer1| customer1.name.downcase == name.downcase }
    end

    def self.find_by_first_name(firstname)
        Customer.all.find{|customer1| customer1.name.split(' ').first.downcase == firstname.downcase }
    end


    def self.all_names
        @@customers
    end


    

    def add_review(restaurant,content,rating)
        Review.new(self,resturant,content,rating)
    end

    
    def num_reviews
        Review.all.count{|cust| cust.name == self}
    end

    




