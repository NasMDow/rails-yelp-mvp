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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "20 70 89 87 90", category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "03 03 03 03 03 03", category: "italian" }
cannelle_rouge =  { name: "La Cannelle Rouge", address: "Domaine les Pailles, Pailles", phone_number: "24 12 34 56", category: "french" }
labourdonnais =  { name: "Le Labourdonnais", address: "Caudan Waterfront, Port-Louis", phone_number: "24 10 34 56", category: "belgian" }
furama =  { name: "Furama", address: "China Town, Port-Louis", phone_number: "21 23 45 67", category:"japanese" }

[ dishoom, pizza_east, cannelle_rouge, labourdonnais, furama ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"