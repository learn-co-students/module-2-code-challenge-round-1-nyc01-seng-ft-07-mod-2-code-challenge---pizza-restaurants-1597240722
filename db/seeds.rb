# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
RestaurantPizza.destroy_all
Restaurant.destroy_all
Pizza.destroy_all

puts "creating restaurants seeds"
 
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

puts "done"

pizzas = [
  {
    name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese"
  },
  {
    name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
  },
  {
    name: "California",
    ingredients: "Dough, Sauce, Ricotta, Red peppers, Mustard"
  },
  {
    name: "Greek",
    ingredients: "Dough, Sauce, Cheese, Feta, Artichokes, Kalamata Olives"
  },
  {
    name: "Margherita",
    ingredients: "Dough, Sauce, Cheese, Basil"
  },
  {
    name: "BBQ Chicken",
    ingredients: "Dough, BBQ sauce, Chicken, Cilantro, Red Onions, Fontina Cheese"
  },
  {
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
  },
  {
    name: "Meat Lovers",
    ingredients: "Dough, Sauce, Cheese, Pepperoni, Sausage, Meatballs, Mushrooms"
  },
  {
    name: "Frutti di mare",
    ingredients: "Dough, Sauce, Cheese, Tuna, Shrimp, Mussels"
  },
  {
    name: "Veggie",
    ingredients: "Dough, Sauce, Cheese, Red Peppers, Green Peppers, Onions, Mushrooms"
  }
]
puts "creating pizza seeds"
pizzas.each do |p|
  Pizza.create!(p)
end

puts "done"

puts "creating restaurant_pizza seeds"

40.times do
  RestaurantPizza.create(restaurant_id: Restaurant.all.sample.id, pizza_id: Pizza.all.sample.id, price:rand(5..10))
end

puts "SEEDED!! go fourth and prosper"
