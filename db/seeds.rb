# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all
Pizza.destroy_all
Branch.destroy_all

restaurants = [{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}]

restaurants.each do |r|
  Restaurant.create!(r)
end

    Pizza.create(
    name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese"
    )
    Pizza.create(
    name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
    )
    Pizza.create(
    name: "California",
    ingredients: "Dough, Sauce, Ricotta, Red peppers, Mustard"
    )
    Pizza.create(
    name: "Greek",
    ingredients: "Dough, Sauce, Cheese, Feta, Artichokes, Kalamata Olives"
    )
    Pizza.create(
    name: "Margherita",
    ingredients: "Dough, Sauce, Cheese, Basil"
    )
    Pizza.create(
    name: "BBQ Chicken",
    ingredients: "Dough, BBQ sauce, Chicken, Cilantro, Red Onions, Fontina Cheese"
  )
  Pizza.create(
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
  )
  Pizza.create(
    name: "Meat Lovers",
    ingredients: "Dough, Sauce, Cheese, Pepperoni, Sausage, Meatballs, Mushrooms"
  )
  Pizza.create(
    name: "Frutti di mare",
    ingredients: "Dough, Sauce, Cheese, Tuna, Shrimp, Mussels"
  )
  Pizza.create(
    name: "Veggie",
    ingredients: "Dough, Sauce, Cheese, Red Peppers, Green Peppers, Onions, Mushrooms"
  )


15.times do
  price=rand(1..30)
  Branch.create(price: price, pizza_id:Pizza.all.sample.id, restaurant_id: Restaurant.all.sample.id)
end

p Restaurant.count
p Pizza.count
p Branch.count



puts "done"