# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Person.destroy_all

puts "Adding person..."
p1 = Person.create(name: "Chett", age: 35)
puts "Person added\n"

puts "Creating fears..."
Fear.create(name: "Dead people", person: p1)
Fear.create(name: "Snakes", person: p1)
Fear.create(name: "Clowns", person: p1)
Fear.create(name: "Rejection", person: p1)
Fear.create(name: "That everyone will find out I've been faking it the whole time", person: p1)
Fear.create(name: "Michael Law", person: p1)
puts "You are now super paranoid.\n\nSeeding completed!\n"
