# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


d1=Dish.create :name => "Margarita"
d1.save

d2=Dish.create :name => "Funghi"
d2.save

d3=Dish.create :name => "Tomatensuppe"
d3.save

ic1=IngredientCategory.create :name => "Gemuese"
ic1.level = 0
ic1.save

ic2=IngredientCategory.create :name => "Kaese"
ic2.level = 0
ic2.save

ic3=IngredientCategory.create :name => "nudeln"
ic3.level = 0
ic3.save

i1=Ingredient.create :name => "Tomate", :description => "rot und rund"
i1.ingredient_category_id = ic1.id
i1.save

i2=Ingredient.create :name => "Zwiebel", :description => "lecker"
i2.ingredient_category_id = ic1.id
i2.save

i3=Ingredient.create :name => "Champignon", :description => "champions"
i3.ingredient_category_id = ic1.id
i3.save

i4=Ingredient.create :name => "Mozarella", :description => "..."
i4.ingredient_category_id = ic2.id
i4.save

i5=Ingredient.create :name => "Cheddar", :description => "ist lecka"
i5.ingredient_category_id = ic2.id
i5.save

i6=Ingredient.create :name => "Spagetti", :description => "gelb"
i6.ingredient_category_id = ic3.id
i6.save

r1=Recipe.create :name => "Meine Margarita", :making => "matschen backen fertig"
r1.dish_id = d1.id
r1.save

r2=Recipe.create :name => "Margarita", :making => "teig, sosse drauf, backen"
r2.dish_id = d1.id
r2.save

r3=Recipe.create :name => "Funghi", :making => "teig, Pilze drauf, backen"
r3.dish_id = d2.id
r3.save

r4=Recipe.create :name => "Tomadesupp", :making => "tomade in die supp"
r4.dish_id = d3.id
r4.save

ir1=NeededIngredient.create :ingredient => i1, :recipe => r1, :quantity => 2, :unit => "Stueck"
ir1=NeededIngredient.create :ingredient => i4, :recipe => r1, :quantity => 200, :unit => "gr"

ir2=NeededIngredient.create :ingredient => i1, :recipe => r2, :quantity => 3, :unit => "Stueck"
ir2=NeededIngredient.create :ingredient => i5, :recipe => r2, :quantity => 0.1, :unit => "kg"

ir3=NeededIngredient.create :ingredient => i3, :recipe => r3, :quantity => 300, :unit => "gr"
ir3=NeededIngredient.create :ingredient => i4, :recipe => r3, :quantity => 200, :unit => "gr"

ir4=NeededIngredient.create :ingredient => i1, :recipe => r4, :quantity => 10, :unit => "Stueck"