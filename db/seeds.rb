# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

require 'faker'
require 'open-uri'

puts 'Cleaning database...'
Bookmark.destroy_all
Recommendation.destroy_all
Message.destroy_all
Notification.destroy_all
Conversation.destroy_all
Interest.destroy_all
UserInterest.destroy_all
InterestCategory.destroy_all
User.destroy_all

puts 'Creating seeds...'

category = InterestCategory.create(name: "Going Out")

Interest.create(name: "Outdoor party", interest_category_id: category.id)
Interest.create(name: "BBQ", interest_category_id: category.id)
Interest.create(name: "Cocktails", interest_category_id: category.id)
Interest.create(name: "Karaoke", interest_category_id: category.id)
Interest.create(name: "Museums", interest_category_id: category.id)
Interest.create(name: "Markets", interest_category_id: category.id)

bars = Interest.create(name: "Bars", interest_category_id: category.id)
clubs = Interest.create(name: "Clubs", interest_category_id: category.id)
park = Interest.create(name: "Going to the park", interest_category_id: category.id)
dancing = Interest.create(name: "Dancing", interest_category_id: category.id)
pubs = Interest.create(name: "Pubs", interest_category_id: category.id)
restaurants = Interest.create(name: "Restaurants", interest_category_id: category.id)

category = InterestCategory.create(name: "Food")
Interest.create(name: "Meat lover", interest_category_id: category.id)
Interest.create(name: "Gluten free", interest_category_id: category.id)
Interest.create(name: "Fast-food", interest_category_id: category.id)
Interest.create(name: "Haut cuisine", interest_category_id: category.id)

vegan = Interest.create(name: "Vegan", interest_category_id: category.id)
street_food = Interest.create(name: "Street food", interest_category_id: category.id)
vegetarian = Interest.create(name: "Vegetarian", interest_category_id: category.id)
coffee = Interest.create(name: "Coffee", interest_category_id: category.id)
international = Interest.create(name: "International", interest_category_id: category.id)
Interest.create(name: "Wine lover", interest_category_id: category.id)

category = InterestCategory.create(name: "Sports")
Interest.create(name: "Martial arts", interest_category_id: category.id)
Interest.create(name: "Pole dancing", interest_category_id: category.id)
Interest.create(name: "Archery", interest_category_id: category.id)
Interest.create(name: "Sailing", interest_category_id: category.id)

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

category = InterestCategory.create(name: "Music")
Interest.create(name: "Country", interest_category_id: category.id)
Interest.create(name: "K-pop", interest_category_id: category.id)
Interest.create(name: "A Capella", interest_category_id: category.id)
Interest.create(name: "Pop", interest_category_id: category.id)

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

file = URI.open('https://images.unsplash.com/photo-1517841905240-472988babdf9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
a = User.new(
  email: "a@test.com",
  password: "123456",
  username: "Emma",
  first_name: "Emma",
  last_name: "Eriksson",
  birthdate: "1997-02-03",
  location: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English", "Swedish",],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )
a.photo.attach(io: file, filename: 'some_name', content_type: '')
a.save!

file = URI.open('https://images.unsplash.com/photo-1622649440704-7f65fef23d25?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmFyY2Vsb25hJTIwbW91bnQlMjB0aWJpZGFib3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
tibidabo = Recommendation.new(name: 'Mount Tibidabo', location: 'Tibidabo', description: 'Mount Tibidabo is a super nice place for relaxing and hiking.', pricing: 'free', user_id: a.id)
tibidabo.photo.attach(io: file, filename: 'some_name', content_type: '')
tibidabo.save!

file = URI.open('https://images.unsplash.com/photo-1557080985-637c8cddf98a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmFyY2Vsb25hJTIwc2FncmFkYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
sagrada = Recommendation.new(name: 'Sagrada Familia', location: 'Carrer de Mallorca 401', description: 'Sagrada Familia is probably the most famous sight in Barcelona. It is a super impressive Cathedral with designs by Gaudi.', pricing: '$$', user_id: a.id)
sagrada.photo.attach(io: file, filename: 'some_name', content_type: '')
sagrada.save!

file = URI.open('https://images.unsplash.com/photo-1556213262-dff92123f3ef?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1504&q=80')
bunkers = Recommendation.new(name: 'Bunkers', location: 'Carrer de Marià Labèrnia', description: 'The Bunkers viewpoint is just a short walk from the city up a mountain. Once you are there, the view is amazin!', pricing: 'free', user_id: a.id)
bunkers.photo.attach(io: file, filename: 'some_name', content_type: '')
bunkers.save!

UserInterest.create!(user_id: a.id, interest_id: tennis.id)
UserInterest.create!(user_id: a.id, interest_id: volleyball.id)

UserInterest.create!(user_id: a.id, interest_id: clubs.id)
UserInterest.create!(user_id: a.id, interest_id: badminton.id)
UserInterest.create!(user_id: a.id, interest_id: bars.id)
UserInterest.create!(user_id: a.id, interest_id: running.id)
UserInterest.create!(user_id: a.id, interest_id: indie.id)
UserInterest.create!(user_id: a.id, interest_id: techno.id)
UserInterest.create!(user_id: a.id, interest_id: vegetarian.id)
UserInterest.create!(user_id: a.id, interest_id: pubs.id)
UserInterest.create!(user_id: a.id, interest_id: international.id)
UserInterest.create!(user_id: a.id, interest_id: punk.id)

file = URI.open('https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
b = User.new(
  email: "b@test.com",
  password: "123456",
  username: "Celia",
  first_name: "Celia",
  last_name: "Young",
  birthdate: "1992-06-06",
  location: "Barcelona",
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
UserInterest.create!(user_id: b.id, interest_id: rock.id)
UserInterest.create!(user_id: b.id, interest_id: classical.id)
UserInterest.create!(user_id: b.id, interest_id: badminton.id)
UserInterest.create!(user_id: b.id, interest_id: volleyball.id)

file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
c = User.new(
  email: "c@test.com",
  password: "123456",
  username: "Lily",
  first_name: "Lily",
  last_name: "Jackson",
  birthdate: "1990-01-03",
  location: "Barcelona",
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
UserInterest.create!(user_id: c.id, interest_id: gym.id)
UserInterest.create!(user_id: c.id, interest_id: climbing.id)

file = URI.open('https://images.unsplash.com/photo-1467881822024-7bec168b479c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80')
d = User.new(
  email: "d@test.com",
  password: "123456",
  username: "Rita",
  first_name: "Rita",
  last_name: "Dirla",
  birthdate: "1986-05-03",
  location: "Barcelona",
  country: "Spain",
  languages: ["Spanish", "English"],
  description: "Hi there! Happy that you found my profile. Message me if you want to meet up for a fun adventure or if you have any questions! :)"
  )

d.photo.attach(io: file, filename: 'some_name', content_type: '')
d.save!

UserInterest.create!(user_id: d.id, interest_id: volleyball.id)
UserInterest.create!(user_id: d.id, interest_id: coffee.id)
UserInterest.create!(user_id: d.id, interest_id: restaurants.id)
UserInterest.create!(user_id: d.id, interest_id: badminton.id)
UserInterest.create!(user_id: d.id, interest_id: tennis.id)
UserInterest.create!(user_id: d.id, interest_id: football.id)
UserInterest.create!(user_id: d.id, interest_id: electronic.id)
UserInterest.create!(user_id: d.id, interest_id: techno.id)
UserInterest.create!(user_id: d.id, interest_id: pubs.id)
UserInterest.create!(user_id: d.id, interest_id: jazz.id)

file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
e = User.new(
  email: "e@test.com",
  password: "123456",
  username: "John",
  first_name: "John",
  last_name: "Lee",
  birthdate: "1989-08-27",
  location: "Barcelona",
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
UserInterest.create!(user_id: e.id, interest_id: pop.id)
UserInterest.create!(user_id: e.id, interest_id: hockey.id)

file = URI.open('https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
f = User.new(
  email: "f@test.com",
  password: "123456",
  username: "Antonio",
  first_name: "Antonio",
  last_name: "Perreira",
  birthdate: "1997-04-03",
  location: "Barcelona",
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
UserInterest.create!(user_id: f.id, interest_id: football.id)
UserInterest.create!(user_id: f.id, interest_id: coffee.id)
UserInterest.create!(user_id: e.id, interest_id: hockey.id)

file = URI.open('https://images.unsplash.com/photo-1508908324153-d1a219719814?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fG1lbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
g = User.new(
  email: "g@test.com",
  password: "123456",
  username: "Andres",
  first_name: "Andres",
  last_name: "Michaelsson",
  birthdate: "1990-09-28",
  location: "Barcelona",
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
UserInterest.create!(user_id: g.id, interest_id: crossfit.id)
UserInterest.create!(user_id: g.id, interest_id: baseball.id)

puts "all users created"
