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

FavoritesRecipe.destroy_all

FavoritesRecipe.create!({
  name: 'apple pie',
  recipe: 'one apple',
  user_id: 2
})


puts 'The End'