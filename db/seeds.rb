# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning the database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do |number|
  
  Restaurant.create!(
    name: Faker::Movies::StarWars.planet,
    address: Faker::Movies::StarWars.call_sign,
    phone_number: "156564",
    category: "chinese"
  )

  puts "Created restaurant number: #{number + 1}"
end

puts 'Finished creating the restaurants!'