# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create!(email: "some@hotmail.com", first_name: "some", last_name: "user", password: "12345678")
User.create!(first_name: "John", last_name: "Doe", email: "john@example.com", password: "password")
User.create!(first_name: "Sarah", last_name: "Poon", email: "sarah@example.com", password: "password")
User.create!(first_name: "Jane", last_name: "Doe", email: "jane@example.com", password: "password")
User.create!(first_name: "Ben", last_name: "Gillespie", email: "ben@example.com", password: "password")
User.create!(first_name: "Tony", last_name: "Hall", email: "tony@example.com", password: "password")
User.create!(first_name: "Brendon", last_name: "Terry", email: "brendon@example.com", password: "password")
User.create!(first_name: "Heidi", last_name: "Tompson", email: "heidi@example.com", password: "password")
User.create!(first_name: "Rachel", last_name: "Andreson", email: "rachel@example.com", password: "password")
User.create!(first_name: "Sussy", last_name: "Birns", email: "sussy@example.com", password: "password")
User.create!(first_name: "kate", last_name: "Richards", email: "kate@example.com", password: "password")