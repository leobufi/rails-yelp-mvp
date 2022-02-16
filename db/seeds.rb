require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: Restaurant::CATEGORY.sample )
  puts 'created 1 restaurant ......'
end

puts "Finished!"
