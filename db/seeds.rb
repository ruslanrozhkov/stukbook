# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'coder1', email: 'coder1@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(username: 'coder2', email: 'coder2@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(username: 'coder3', email: 'coder3@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(username: 'coder4', email: 'coder4@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(username: 'coder5', email: 'coder5@gmail.com', password: 'test123', password_confirmation: 'test123')

p 'Test users created'