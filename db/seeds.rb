# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '27369187010', category: 'french' }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '2710', category: 'italian' }
hot_pot = {name: "Hot Pot", address: "12 Rosmary St, London E2 7JE", phone_number: '3489234726', category: 'chinese' }
burger_town = {name: "Burger Town", address: "8 Boulder St, London E6 7JE", phone_number: '984728', category: 'belgian' }
mushroom = {name: "Mush Room", address: "1 Seville St, London E2 7JE", phone_number: '23492', category: 'french' }

[dishoom, pizza_east, hot_pot, burger_town, mushroom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
