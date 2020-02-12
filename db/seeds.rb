# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'launching seeds'
puts 'destroying previous db'
Restaurant.destroy_all
Review.destroy_all

puts 'creating restaurants'
Restaurant.create!(name: "pizza nico", address: "balguery", phone_number: "06 06 06 06 06", category: "italian")
Restaurant.create!(name: "pizza lico", address: "balguery", phone_number: "07 07 07 07 07", category: "italian")
Restaurant.create!(name: "pizza mico", address: "balguery", phone_number: "08 08 08 08 08", category: "italian")
Restaurant.create!(name: "pizza dico", address: "balguery", phone_number: "06 06 06 06 06", category: "italian")
puts 'creating reviews'
Review.create!(restaurant_id: 1, content: "it was amazing", rating: 5)

puts 'everything has been added gracefully'
