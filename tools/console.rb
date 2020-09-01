require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


scotts_bakery = Bakery.new("scotts_bakery")
anneys_bakery = Bakery.new("anneys_bakery")

scotts_cake = Dessert.new(scotts_bakery, "cake")
scotts_cookies = Dessert.new(scotts_bakery, "cookies")
scotts_cupcake = Dessert.new(scotts_bakery, "cupcake")

anneys_cookies = Dessert.new(anneys_bakery, "cookies")
anneys_cupcake = Dessert.new(anneys_bakery, "cupcake")


sugar = Ingredient.new("sugar", 100)
milk = Ingredient.new("chocolate", 200)
flour = Ingredient.new("flour", 300)
chocolate = Ingredient.new("chocolate", 50)
vanilla = Ingredient.new("vanilla_pudding", 140)
vanilla_extract = Ingredient.new("vanilla_extract", 120)
vanilla_cream = Ingredient.new("vanilla_cream", 80)

DessertIngredient.new(scotts_cake, sugar)
DessertIngredient.new(scotts_cake, flour)
DessertIngredient.new(scotts_cake, vanilla_cream)

DessertIngredient.new(scotts_cookies, chocolate)
DessertIngredient.new(scotts_cookies, sugar) 
DessertIngredient.new(scotts_cookies, milk)
DessertIngredient.new(scotts_cookies, vanilla_extract)
DessertIngredient.new(scotts_cupcake, vanilla)
DessertIngredient.new(scotts_cupcake, milk)

DessertIngredient.new(anneys_cookies, chocolate)
DessertIngredient.new(anneys_cookies, sugar)
DessertIngredient.new(anneys_cookies, milk)
DessertIngredient.new(anneys_cupcake, vanilla_cream)
DessertIngredient.new(anneys_cupcake, vanilla_extract)



binding.pry

# houston = Listing.new("houston")
# dc = Listing.new("dc")
# san_diego = Listing.new("san_diego")
# baltimore = Listing.new("baltimore")

# scott = Guest.new("scott")
# anney = Guest.new("anney")

# anney_vacation_1 = Trip.new("houston", "anney")
# anney_vacation_2 = Trip.new("san_diego", "anney")
# scott_vacation_1 = Trip.new("baltimore", "scott")
# scott_vacation_2 = Trip.new("houston", "scott")
# scott_vacation_3 = Trip.new("dc", "scott")