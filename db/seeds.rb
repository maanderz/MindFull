# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding data...'

User.destroy_all

User.create!({
  name: 'Angie', 
  password:'1235678990', 
  email:'angie@123.com'
})

Category.destroy_all

Category.create!({
  name: 'fruits'
})

Ingredient.destroy_all

Ingredient.create!({
  name: 'Apple',
  quantity: 2,
  category_id: 1
})

Recipe.destroy_all

Recipe.create!({
  name: 'Apple pie',
  img: 'https://img.taste.com.au/sQs5aHeK/taste/2016/11/apple-pie-with-cheddar-crust-97328-1.jpeg',
  ingredient_id: 1,
  instructions: 'Bake'
})

MealPlan.destroy_all

MealPlan.create!({
  recipe_id: 1,
  weekday: 'monday',
  user_id: 1
})

FavoritesRecipe.destroy_all

FavoritesRecipe.create!({
  recipe_id: 1,
  user_id: 1
})


puts 'The End'