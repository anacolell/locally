# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(name: 'Local', age: '24', email:'test1@mail.com', password: '123456', username: 'lisa12', description: 'blaaaaaaa', gender: 'female', location: 'berlin', birthdate: Date.new, profile_type: 'individual')
# User.create!(name: 'Tourist', age: '28', email:'test2@mail.com', password: '123456', username: 'emma12', description: 'helloooooo', gender: 'female', location: 'stockholm', birthdate: Date.new, profile_type: 'individual')
# Meetup.create!(location: 'Söderhallarna', date_time: Date.new, local_id: User.first.id, tourist_id: User.last.id)

# Interest.create(name: 'Tennis')
# interests.create(name: 'Volleyball')
# interests.create(name: 'Swimming')
# interests.create(name: 'Badminton')
# interests.create(name: 'Food')

require 'faker'
puts 'Cleaning database...'

Interest.destroy_all
UserInterest.destroy_all
InterestCategory.destroy_all
User.destroy_all

puts 'Creating seeds...'

category = InterestCategory.create(name: "Going Out")
# Interest.create(name: "Bars", interest_category_id: category.id)
# Interest.create(name: "Clubs", interest_category_id: category.id)
# Interest.create(name: "Going to the park", interest_category_id: category.id)
# Interest.create(name: "Dancing", interest_category_id: category.id)
# Interest.create(name: "Pubs", interest_category_id: category.id)
# Interest.create(name: "Speakeasies", interest_category_id: category.id)
Interest.create(name: "Outdoor party", interest_category_id: category.id)
Interest.create(name: "BBQ", interest_category_id: category.id)
Interest.create(name: "Cocktails", interest_category_id: category.id)

bars = Interest.create(name: "Bars", interest_category_id: category.id)
clubs = Interest.create(name: "Clubs", interest_category_id: category.id)
park = Interest.create(name: "Going to the park", interest_category_id: category.id)
dancing = Interest.create(name: "Dancing", interest_category_id: category.id)
pubs = Interest.create(name: "Pubs", interest_category_id: category.id)
restaurants = Interest.create(name: "Restaurants", interest_category_id: category.id)

category = InterestCategory.create(name: "Food")
# Interest.create(name: "Vegan", interest_category_id: category.id)
Interest.create(name: "Meat lover", interest_category_id: category.id)
# Interest.create(name: "Street food", interest_category_id: category.id)
Interest.create(name: "Gluten free", interest_category_id: category.id)
# Interest.create(name: "Vegetarian", interest_category_id: category.id)
Interest.create(name: "Fast-food", interest_category_id: category.id)
Interest.create(name: "Haut cuisine", interest_category_id: category.id)
# Interest.create(name: "International", interest_category_id: category.id)

vegan = Interest.create(name: "Vegan", interest_category_id: category.id)
street_food = Interest.create(name: "Street food", interest_category_id: category.id)
vegetarian = Interest.create(name: "Vegetarian", interest_category_id: category.id)
international = Interest.create(name: "International", interest_category_id: category.id)
coffee = Interest.create(name: "Coffee", interest_category_id: category.id)

category = InterestCategory.create(name: "Sports")
# Interest.create(name: "Tennis", interest_category_id: category.id)
# Interest.create(name: "Football", interest_category_id: category.id)
# Interest.create(name: "Gym", interest_category_id: category.id)
# Interest.create(name: "Basketball", interest_category_id: category.id)
# Interest.create(name: "Climbing", interest_category_id: category.id)
# Interest.create(name: "Baseball", interest_category_id: category.id)
Interest.create(name: "Martial arts", interest_category_id: category.id)
Interest.create(name: "Pole dancing", interest_category_id: category.id)
# Interest.create(name: "Hockey", interest_category_id: category.id)
# Interest.create(name: "Badmington", interest_category_id: category.id)
# Interest.create(name: "Running", interest_category_id: category.id)
# Interest.create(name: "Crossfit", interest_category_id: category.id)
# Interest.create(name: "Skating", interest_category_id: category.id)
# Interest.create(name: "Table tennis", interest_category_id: category.id)
# Interest.create(name: "Volleyball", interest_category_id: category.id)

tennis = Interest.create(name: "Tennis", interest_category_id: category.id)
football = Interest.create(name: "Football", interest_category_id: category.id)
gym = Interest.create(name: "Gym", interest_category_id: category.id)
basketball = Interest.create(name: "Basketball", interest_category_id: category.id)
climbing = Interest.create(name: "Climbing", interest_category_id: category.id)
baseball = Interest.create(name: "Baseball", interest_category_id: category.id)
hockey = Interest.create(name: "Hockey", interest_category_id: category.id)
badminton = Interest.create(name: "Badminton", interest_category_id: category.id)
running = Interest.create(name: "Running", interest_category_id: category.id)
crossfit = Interest.create(name: "Crossfit", interest_category_id: category.id)
skating = Interest.create(name: "Skating", interest_category_id: category.id)
table_tennis = Interest.create(name: "Table tennis", interest_category_id: category.id)
volleyball = Interest.create(name: "Volleyball", interest_category_id: category.id)
# Interest.create(name: "Yoga", interest_category_id: category.id)
# Interest.create(name: "Rugby", interest_category_id: category.id)
# Interest.create(name: "Tai chi", interest_category_id: category.id)
# Interest.create(name: "Taekwondo", interest_category_id: category.id)
# Interest.create(name: "Soccer", interest_category_id: category.id)
# Interest.create(name: "Jumping rope", interest_category_id: category.id)


# category = InterestCategory.create(name: "Outdoors and Outdoor Sports")
# Interest.create(name: "Cycling", interest_category_id: category.id)
# Interest.create(name: "Scuba diving", interest_category_id: category.id)
# Interest.create(name: "Windsurfing", interest_category_id: category.id)
# Interest.create(name: "Horse riding", interest_category_id: category.id)
# Interest.create(name: "Surfing", interest_category_id: category.id)
# Interest.create(name: "Skiing", interest_category_id: category.id)
# Interest.create(name: "Snowboarding", interest_category_id: category.id)
# Interest.create(name: "Hiking", interest_category_id: category.id)
# Interest.create(name: "Mountainbike", interest_category_id: category.id)
# Interest.create(name: "Camping", interest_category_id: category.id)
# Interest.create(name: "Canoeing", interest_category_id: category.id)
# Interest.create(name: "Fishing", interest_category_id: category.id)
# Interest.create(name: "Dog walking", interest_category_id: category.id)
# Interest.create(name: "Gardening", interest_category_id: category.id)
# Interest.create(name: "Geocoaching", interest_category_id: category.id)
# Interest.create(name: "Golf", interest_category_id: category.id)
# Interest.create(name: "Kayaking", interest_category_id: category.id)
# Interest.create(name: "Kitesurfing", interest_category_id: category.id)
# Interest.create(name: "Motor sports", interest_category_id: category.id)
# Interest.create(name: "Mountaineering", interest_category_id: category.id)
# Interest.create(name: "Nordic skating", interest_category_id: category.id)
# Interest.create(name: "Picnicking", interest_category_id: category.id)
# Interest.create(name: "Rafting", interest_category_id: category.id)
# Interest.create(name: "Rock Climbing", interest_category_id: category.id)
# Interest.create(name: "Picnicking", interest_category_id: category.id)
# Interest.create(name: "Polo", interest_category_id: category.id)
# Interest.create(name: "Sailing", interest_category_id: category.id)
# Interest.create(name: "Slacklining", interest_category_id: category.id)
# Interest.create(name: "Snorkeling", interest_category_id: category.id)
# Interest.create(name: "Snowshoeing", interest_category_id: category.id)
# Interest.create(name: "Skydiving", interest_category_id: category.id)
# Interest.create(name: "Taking walks", interest_category_id: category.id)
# Interest.create(name: "Roller skating", interest_category_id: category.id)
# Interest.create(name: "Paragliding", interest_category_id: category.id)


category = InterestCategory.create(name: "Music")
# Interest.create(name: "Classical", interest_category_id: category.id)
# Interest.create(name: "Rock", interest_category_id: category.id)
# Interest.create(name: "Alternative", interest_category_id: category.id)
# Interest.create(name: "Electronic", interest_category_id: category.id)
# Interest.create(name: "Jazz", interest_category_id: category.id)
# Interest.create(name: "Punk", interest_category_id: category.id)
Interest.create(name: "Country", interest_category_id: category.id)
Interest.create(name: "K-pop", interest_category_id: category.id)
Interest.create(name: "A Capella", interest_category_id: category.id)
# Interest.create(name: "Pop", interest_category_id: category.id)
# Interest.create(name: "Indie", interest_category_id: category.id)
Interest.create(name: "K-pop", interest_category_id: category.id)
Interest.create(name: "Pop", interest_category_id: category.id)
Interest.create(name: "A Capella", interest_category_id: category.id)
# Interest.create(name: "Techno", interest_category_id: category.id)

classical = Interest.create(name: "Classical", interest_category_id: category.id)
rock = Interest.create(name: "Rock", interest_category_id: category.id)
alternative = Interest.create(name: "Alternative", interest_category_id: category.id)
electronic = Interest.create(name: "Electronic", interest_category_id: category.id)
jazz = Interest.create(name: "Jazz", interest_category_id: category.id)
punk = Interest.create(name: "Punk", interest_category_id: category.id)
country = Interest.create(name: "Country", interest_category_id: category.id)
pop = Interest.create(name: "Pop", interest_category_id: category.id)
indie = Interest.create(name: "Indie", interest_category_id: category.id)
techno = Interest.create(name: "Techno", interest_category_id: category.id)

# category = InterestCategory.create(name: "Culture")
# Interest.create(name: "Museums", interest_category_id: category.id)
# Interest.create(name: "Painting", interest_category_id: category.id)
# Interest.create(name: "Art", interest_category_id: category.id)
# Interest.create(name: "Cinema", interest_category_id: category.id)
# Interest.create(name: "Photography", interest_category_id: category.id)

# category = InterestCategory.create(name: "Personality")
# Interest.create(name: "Cheerful", interest_category_id: category.id)
# Interest.create(name: "Adventurous", interest_category_id: category.id)
# Interest.create(name: "Adrenaline junkie", interest_category_id: category.id)
# Interest.create(name: "Spontaneous", interest_category_id: category.id)
# Interest.create(name: "Chill", interest_category_id: category.id)
# Interest.create(name: "Punk", interest_category_id: category.id)
# Interest.create(name: "Country", interest_category_id: category.id)

# category = InterestCategory.create(name: "Educational")
# Interest.create(name: "Archaeology", interest_category_id: category.id)
# Interest.create(name: "Astronomy", interest_category_id: category.id)
# Interest.create(name: "Biology", interest_category_id: category.id)
# Interest.create(name: "Chemistry", interest_category_id: category.id)
# Interest.create(name: "English", interest_category_id: category.id)
# Interest.create(name: "Geography", interest_category_id: category.id)
# Interest.create(name: "History", interest_category_id: category.id)
# Interest.create(name: "Mathematics", interest_category_id: category.id)
# Interest.create(name: "Medical science", interest_category_id: category.id)
# Interest.create(name: "Microbiology", interest_category_id: category.id)
# Interest.create(name: "Philosophy", interest_category_id: category.id)
# Interest.create(name: "Physics", interest_category_id: category.id)
# Interest.create(name: "Psychology", interest_category_id: category.id)
# Interest.create(name: "Research", interest_category_id: category.id)
# Interest.create(name: "Science and technology", interest_category_id: category.id)
# Interest.create(name: "Social studies", interest_category_id: category.id)
# Interest.create(name: "Sports science", interest_category_id: category.id)
# Interest.create(name: "Life science", interest_category_id: category.id)
# Interest.create(name: "Physics", interest_category_id: category.id)
# Interest.create(name: "Psychology", interest_category_id: category.id)
# Interest.create(name: "Physics", interest_category_id: category.id)

file = URI.open('https://images.unsplash.com/photo-1517841905240-472988babdf9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
a = User.new(
  email: "a@test.com",
  password: "123456",
  username: "Emma",
  age: 23,
  location: "Barcelona",
  )
a.photo.attach(io: file, filename: 'some_name', content_type: '')
a.save!

UserInterest.create!(user: a, interest: tennis)
UserInterest.create!(user: a, interest: volleyball)
UserInterest.create!(user: a, interest: clubs)
UserInterest.create!(user: a, interest: badminton)
UserInterest.create!(user: a, interest: bars)
UserInterest.create!(user: a, interest: running)
UserInterest.create!(user: a, interest: indie)
UserInterest.create!(user: a, interest: techno)

file = URI.open('https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
b = User.new(
  email: "b@test.com",
  password: "123456",
  username: "Celia",
  age: 28,
  location: "Barcelona",
  )
b.photo.attach(io: file, filename: 'some_name', content_type: '')
b.save!

UserInterest.create!(user: b, interest: tennis)
UserInterest.create!(user: b, interest: coffee)
UserInterest.create!(user: b, interest: pubs)
UserInterest.create!(user: b, interest: dancing)
UserInterest.create!(user: b, interest: gym)
UserInterest.create!(user: b, interest: electronic)
UserInterest.create!(user: b, interest: alternative)

file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
c = User.new(
  email: "c@test.com",
  password: "123456",
  username: "Lily",
  age: 27,
  location: "Barcelona",
  )
c.photo.attach(io: file, filename: 'some_name', content_type: '')
c.save!

UserInterest.create!(user: c, interest: dancing)
UserInterest.create!(user: c, interest: coffee)
UserInterest.create!(user: c, interest: restaurants)
UserInterest.create!(user: c, interest: badminton)
UserInterest.create!(user: c, interest: tennis)
UserInterest.create!(user: c, interest: football)
UserInterest.create!(user: c, interest: pop)
UserInterest.create!(user: c, interest: country)

d = User.new(
  email: "d@test.com",
  password: "123456",
  username: "Rita",
  age: 27,
  location: "Barcelona",
  )
d.save!

UserInterest.create!(user: d, interest: volleyball)
UserInterest.create!(user: d, interest: coffee)
UserInterest.create!(user: d, interest: restaurants)
UserInterest.create!(user: d, interest: badminton)
UserInterest.create!(user: d, interest: tennis)
UserInterest.create!(user: d, interest: football)
UserInterest.create!(user: d, interest: electronic)
UserInterest.create!(user: d, interest: techno)

file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
e = User.new(
  email: "e@test.com",
  password: "123456",
  username: "John",
  age: 28,
  location: "Barcelona",
  )
e.photo.attach(io: file, filename: 'some_name', content_type: '')
e.save!

UserInterest.create!(user: e, interest: bars)
UserInterest.create!(user: e, interest: hockey)
UserInterest.create!(user: e, interest: climbing)
UserInterest.create!(user: e, interest: indie)
UserInterest.create!(user: e, interest: coffee)
UserInterest.create!(user: e, interest: restaurants)
UserInterest.create!(user: e, interest: jazz)
UserInterest.create!(user: e, interest: techno)

file = URI.open('https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
f = User.new(
  email: "f@test.com",
  password: "123456",
  username: "Antonio",
  age: 25,
  location: "Barcelona",
  )
f.photo.attach(io: file, filename: 'some_name', content_type: '')
f.save!

UserInterest.create!(user: f, interest: restaurants)
UserInterest.create!(user: f, interest: bars)
UserInterest.create!(user: f, interest: dancing)
UserInterest.create!(user: f, interest: tennis)
UserInterest.create!(user: f, interest: volleyball)
UserInterest.create!(user: f, interest: indie)

file = URI.open('https://images.unsplash.com/photo-1508908324153-d1a219719814?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fG1lbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
g = User.new(
  email: "g@test.com",
  password: "123456",
  username: "Andres",
  age: 30,
  location: "Barcelona",
  )
g.photo.attach(io: file, filename: 'some_name', content_type: '')
g.save!

UserInterest.create!(user: g, interest: volleyball)
UserInterest.create!(user: g, interest: climbing)
UserInterest.create!(user: g, interest: vegan)
UserInterest.create!(user: g, interest: tennis)
UserInterest.create!(user: g, interest: volleyball)
UserInterest.create!(user: g, interest: indie)
UserInterest.create!(user: g, interest: techno)

# h = User.create!(username: 'John', email: 'dmail@test.com', password: '123456', location: "Stockholm")
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: coffee)
# UserInterest.create!(user: d, interest: badminton)

# i = User.create!(username: 'John', email: 'dmail@test.com', password: '123456', location: "Stockholm")
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: coffee)
# UserInterest.create!(user: d, interest: badminton)

# j = User.create!(username: 'John', email: 'dmail@test.com', password: '123456', location: "Stockholm")
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: coffee)
# UserInterest.create!(user: d, interest: badminton)

# k = User.create!(username: 'John', email: 'dmail@test.com', password: '123456', location: "Stockholm")
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: coffee)
# UserInterest.create!(user: d, interest: badminton)

# l = User.create!(username: 'John', email: 'dmail@test.com', password: '123456', location: "Stockholm")
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: coffee)
# UserInterest.create!(user: d, interest: badminton)

# t.string "email", default: "", null: false
# t.string "first_name"
# t.string "last_name"
# t.string "username"
# t.integer "age"
# t.string "gender"
# t.date "birthdate"
# t.string "location"
# t.text "languages", array: true
# t.text "description"
# t.string "cities_visited"
# t.string "user_type"
# t.string "profile_type"
# t.string "name"
# t.boolean "admin"







