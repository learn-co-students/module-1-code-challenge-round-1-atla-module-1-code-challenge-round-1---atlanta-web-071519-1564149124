class Restaurant
  attr_reader :name
  @@all = []
  def initialize(props={})
    @name = props[:name]
    @customers = props[:customers]
    @reviews = props[:reviews]
    @average_star_rating = props[:average_star_rating]
    @longest_reviews = props[:longest_reviews]
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name(name)
    name.all.
  end

end
