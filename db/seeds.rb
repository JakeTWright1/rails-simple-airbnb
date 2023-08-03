# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Clearing Database"
Flat.destroy_all

puts "Creating New Listings..."
4.times do
  flat = Flat.create!(
    name: "#{rand(1..5)} room apartment in #{Faker::Nation.capital_city}",
    address: Faker::Address.full_address,
    description: ['Stunning apartment in the heart of the city', 'Cosy spot for a relaxed weekend away',' Vibrant location in the cultural quarter', 'Stunning loft apartment for a romantic getaway!'].sample,
    price_per_night: rand(100..900),
    number_of_guests: rand(1..5)
  )
  puts "Flat with id: #{flat.id} has been created"
end

puts "Finished!"
