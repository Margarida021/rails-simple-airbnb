# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Destroying the previous data..."
Flat.destroy_all
puts "All done!"

8.times do
  Flat.create!(
    name: "Light & Spacious Garden Flat London",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price_per_night: Faker::Number.number(digits: 3),
    number_of_guests: Faker::Number.within(range: 1..6)
  )
end
