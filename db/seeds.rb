# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'Local', age: '24', email:'test1@mail.com', password: '123456', username: 'lisa12', description: 'blaaaaaaa', gender: 'female', location: 'berlin', birthdate: Date.new, profile_type: 'individual')
User.create!(name: 'Tourist', age: '28', email:'test2@mail.com', password: '123456', username: 'emma12', description: 'helloooooo', gender: 'female', location: 'stockholm', birthdate: Date.new, profile_type: 'individual')
Meetup.create!(location: 'Söderhallarna', date_time: Date.new, local_id: User.first.id, tourist_id: User.last.id)

