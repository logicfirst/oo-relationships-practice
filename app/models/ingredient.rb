class Ingredient

    attr_reader :ingredient
    attr_accessor :calorie

    @@all = [] 

    def initialize(ingredient, calorie)
        @ingredient = ingredient
        @calorie = calorie
        @@all << self
    end

    def dessert #sugar.dessert
        DessertIngredient.all.select {|di| di.ingredient == self}.map {|di| di.dessert}
    end

    def self.all
    @@all
    end

    def self.all_by_name(ingredient) #"vanilla"
        Ingredient.all.select {|item| item.ingredient.include?(ingredient)}
        # iterate thru my dessert ingredients using DI.all, select all the 
        # INGREDIENTS in DI, does some contains ARGUMENT? in the list of ingredients
    end

end