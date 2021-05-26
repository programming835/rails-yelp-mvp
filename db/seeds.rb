# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza_hut = { name: "Pizza Hut", address: "7 Boundary St, London E2 7JE", category: "italian" }
burger_king =  { name: "Burger King", address: "56A Shoreditch High St, London E1 6PQ", category: "french", phone_number: "357 777 000" }
McD = { name: "McDonalds", address: "123 Fake St, London E1 7PE", category: "belgian" }
nandos =  { name: "Nandos", address: "7 Cheeky St, London E1 9EE", category: "italian", phone_number: "555 459 440" }
starbucks = { name: "starbucks", address: "Somewhere nowhere, London E1 1AA", category: "french" }

[ pizza_hut, burger_king, McD, nandos, starbucks ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"