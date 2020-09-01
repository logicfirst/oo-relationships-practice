class Dessert

    attr_reader :dessert, :bakery

    @@all = []

    def initialize(bakery, dessert)
        @bakery = bakery
        @dessert = dessert
        @@all << self
    end

    def self.all
    @@all
    end

    def ingredients #scotts_cake.ingredients  ======= [sugar, flour, vanilla_cream]
        # iterate over DI (it holds the info for dessert & ingredients.
        # we want to go thru all the deesserts that equals SELF,
        # and then spit out the ingredients
        DessertIngredient.all.select {|di| di.dessert == self}.map {|di| di.ingredient}
    end

    def bakery
        @bakery
    end

    def calories #scotts_cake.calories ========== 480.0
        total = 0
        self.ingredients.select {|ingredient| total += ingredient.calorie}
        total.to_f #480.0 #0.0
   
        # set total calories to 0, we want to add every ingredient's calories to the total
        # and update the total, and then return the new total 

    end

end