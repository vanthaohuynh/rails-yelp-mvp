# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the DB'
# Restaurant.destroy_all
puts 'Creating 5 restaurants...'
5.times do
  Restaurant.create!(
    name: Faker::Superhero.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber,
    category: Restaurant::CATEGORY.sample
  )
end
puts 'Done'
