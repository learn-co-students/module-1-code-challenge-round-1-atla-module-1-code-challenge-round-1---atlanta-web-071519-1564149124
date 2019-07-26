class Restaurant
    @@restaurants = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @restaurants <<self
    end



    

    def self.all
        @@restaurants
    end

    def self.find_by_name(name)
        Restaurant.all.find{|restaurant1| restaurant1.name.downcase == name.downcase }
    end
