# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all users"
User.destroy_all

puts "Destroying all yachts"
Yacht.destroy_all

puts "Creating users"

flo = User.create!(first_name: "Flo", last_name: "Horta", email: "florenthorta@gmail.com", password: "azerty")
nico = User.create!(first_name: "Nicolas", last_name: "Essayn", email: "nico@gmail.com", password: "azerty")


puts "Users created : #{User.count}"
puts "Creating yachts"


Yacht.create!(name: "Phocea 2", port: "Marseille", price: 2000, passengers_capacity: 12, user: flo)
Yacht.create!(name: "Boat boat 2", port: "Antibes", price: 30_000, passengers_capacity: 8, user: nico)
Yacht.create!(name: "Bonbon 2", port: "Paris", price: 10_000, passengers_capacity: 8, user: nico)

puts "Yachts created : #{Yacht.count}"
