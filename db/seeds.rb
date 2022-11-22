# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

admin = User.create!(email: "admin@admin.com", password: "123456", admin: true)
gabriel = User.create!(email: "gabriel@lewagon.org", password: "123456", admin: false)
seb = User.create!(email: "seb@lewagon.org", password: "123456", admin: false)

Restaurant.create!(name: "El Marmiton", rating: 2.0, user: gabriel)
Restaurant.create!(name: "Dona Bella", rating: 3.0, user: gabriel)
Restaurant.create!(name: "Burguer Prince", rating: 2.0, user: seb)
Restaurant.create!(name: "Mc Ronalds", rating: 2.0, user: seb)