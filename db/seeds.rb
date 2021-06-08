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
require 'open-uri'

puts 'Cleaning database...'
Recommendation.destroy_all
Message.destroy_all
Conversation.destroy_all
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

puts "all interests"

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
  first_name: "Emma",
  last_name: "Eriksson",
  birthdate: "1997-02-03",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English", "Swedish",],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
a.photo.attach(io: file, filename: 'some_name', content_type: '')
a.save!

Recommendation.create!(name: 'Söderhallarna', location: 'Medborgarplatsen 3', description: 'nice foodhall', pricing: 'free', user_id: a.id)

UserInterest.create!(user_id: a.id, interest_id: tennis.id)
UserInterest.create!(user_id: a.id, interest_id: volleyball.id)

UserInterest.create!(user_id: a.id, interest_id: clubs.id)
UserInterest.create!(user_id: a.id, interest_id: badminton.id)
UserInterest.create!(user_id: a.id, interest_id: bars.id)
UserInterest.create!(user_id: a.id, interest_id: running.id)
UserInterest.create!(user_id: a.id, interest_id: indie.id)
UserInterest.create!(user_id: a.id, interest_id: techno.id)

file = URI.open('https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
b = User.new(
  email: "b@test.com",
  password: "123456",
  username: "Celia",
  first_name: "Celia",
  last_name: "Young",
  birthdate: "1992-06-06",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
b.photo.attach(io: file, filename: 'some_name', content_type: '')
b.save!

UserInterest.create!(user_id: b.id, interest_id: tennis.id)
UserInterest.create!(user_id: b.id, interest_id: coffee.id)
UserInterest.create!(user_id: b.id, interest_id: pubs.id)
UserInterest.create!(user_id: b.id, interest_id: dancing.id)
UserInterest.create!(user_id: b.id, interest_id: gym.id)
UserInterest.create!(user_id: b.id, interest_id: electronic.id)
UserInterest.create!(user_id: b.id, interest_id: alternative.id)

file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
c = User.new(
  email: "c@test.com",
  password: "123456",
  username: "Lily",
  first_name: "Lily",
  last_name: "Jackson",
  birthdate: "1990-01-03",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["English", "Swedish", "Italian"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
c.photo.attach(io: file, filename: 'some_name', content_type: '')
c.save!

UserInterest.create!(user_id: c.id, interest_id: dancing.id)
UserInterest.create!(user_id: c.id, interest_id: coffee.id)
UserInterest.create!(user_id: c.id, interest_id: restaurants.id)
UserInterest.create!(user_id: c.id, interest_id: badminton.id)
UserInterest.create!(user_id: c.id, interest_id: tennis.id)
UserInterest.create!(user_id: c.id, interest_id: football.id)
UserInterest.create!(user_id: c.id, interest_id: pop.id)
UserInterest.create!(user_id: c.id, interest_id: country.id)

d = User.new(
  email: "d@test.com",
  password: "123456",
  username: "Rita",
  first_name: "Rita",
  last_name: "Dirla",
  birthdate: "1986-05-03",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
d.save!

UserInterest.create!(user_id: d.id, interest_id: volleyball.id)
UserInterest.create!(user_id: d.id, interest_id: coffee.id)
UserInterest.create!(user_id: d.id, interest_id: restaurants.id)
UserInterest.create!(user_id: d.id, interest_id: badminton.id)
UserInterest.create!(user_id: d.id, interest_id: tennis.id)
UserInterest.create!(user_id: d.id, interest_id: football.id)
UserInterest.create!(user_id: d.id, interest_id: electronic.id)
UserInterest.create!(user_id: d.id, interest_id: techno.id)

file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
e = User.new(
  email: "e@test.com",
  password: "123456",
  username: "John",
  first_name: "John",
  last_name: "Lee",
  birthdate: "1989-08-27",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["English"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
e.photo.attach(io: file, filename: 'some_name', content_type: '')
e.save!

UserInterest.create!(user_id: e.id, interest_id: bars.id)
UserInterest.create!(user_id: e.id, interest_id: hockey.id)
UserInterest.create!(user_id: e.id, interest_id: climbing.id)
UserInterest.create!(user_id: e.id, interest_id: indie.id)
UserInterest.create!(user_id: e.id, interest_id: coffee.id)
UserInterest.create!(user_id: e.id, interest_id: restaurants.id)
UserInterest.create!(user_id: e.id, interest_id: jazz.id)
UserInterest.create!(user_id: e.id, interest_id: techno.id)

file = URI.open('https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
f = User.new(
  email: "f@test.com",
  password: "123456",
  username: "Antonio",
  first_name: "Antonio",
  last_name: "Perreira",
  birthdate: "1997-04-03",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English", "Arabic"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
f.photo.attach(io: file, filename: 'some_name', content_type: '')
f.save!

UserInterest.create!(user_id: f.id, interest_id: restaurants.id)
UserInterest.create!(user_id: f.id, interest_id: bars.id)
UserInterest.create!(user_id: f.id, interest_id: dancing.id)
UserInterest.create!(user_id: f.id, interest_id: tennis.id)
UserInterest.create!(user_id: f.id, interest_id: volleyball.id)
UserInterest.create!(user_id: f.id, interest_id: indie.id)

file = URI.open('https://images.unsplash.com/photo-1508908324153-d1a219719814?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fG1lbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
g = User.new(
  email: "g@test.com",
  password: "123456",
  username: "Andres",
  first_name: "Andres",
  last_name: "Michaelsson",
  birthdate: "1990-09-28",
  location: "Barcelona",
  city: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
g.photo.attach(io: file, filename: 'some_name', content_type: '')
g.save!

UserInterest.create!(user_id: g.id, interest_id: volleyball.id)
UserInterest.create!(user_id: g.id, interest_id: climbing.id)
UserInterest.create!(user_id: g.id, interest_id: vegan.id)
UserInterest.create!(user_id: g.id, interest_id: tennis.id)
UserInterest.create!(user_id: g.id, interest_id: volleyball.id)
UserInterest.create!(user_id: g.id, interest_id: indie.id)
UserInterest.create!(user_id: g.id, interest_id: techno.id)

puts "all users created"

# h = User.create!(username: 'John', email: 'dmail@test.com', password: '123456', location: "Stockholm")
# UserInterest.create!(user: d, interest_id: tennis)
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







