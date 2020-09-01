class Bakery

    attr_reader :bakery

    @@all = []

    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def ingredients #scotts_bakery.ingredients ======= 
    end

    def desserts
    end
     
    def average_calories
    end

    def self.all
        @@all
    end

    def shopping_list
    end

end