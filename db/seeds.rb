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

Interest.destroy_all
UserInterest.destroy_all
InterestCategory.destroy_all
User.destroy_all

# sports = InterestCategory.create!(name: 'Sports')
# food = InterestCategory.create!(name: 'Food')
# tennis = Interest.create!(name: 'Tennis', interest_category: sports)
# volleyball = Interest.create!(name: 'Volleyball', interest_category: sports)
# swimming = Interest.create!(name: 'Swimming', interest_category: sports)
# badminton = Interest.create!(name: 'Badminton', interest_category: sports)
# restaurants = Interest.create!(name: 'Restaurants', interest_category: food)
# coffee = Interest.create!(name: 'Coffee', interest_category: food)

# a = User.create!(username: 'ana', email: 'amail2@test.com', password: '123456')
# UserInterest.create!(user: a, interest: tennis)
# UserInterest.create!(user: a, interest: volleyball)
# UserInterest.create!(user: a, interest: swimming)
# UserInterest.create!(user: a, interest: badminton)

# b = User.create!(username: 'britta', email: 'bmail@test.com', password: '123456')
# UserInterest.create!(user: b, interest: tennis)
# UserInterest.create!(user: b, interest: coffee)
# UserInterest.create!(user: b, interest: restaurants)
# UserInterest.create!(user: b, interest: badminton)

# c = User.create!(username: 'cris', email: 'cmail@test.com', password: '123456')
# UserInterest.create!(user: c, interest: restaurants)
# UserInterest.create!(user: c, interest: coffee)

# d = User.create!(username: 'dan', email: 'dmail@test.com', password: '123456')
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: coffee)
# UserInterest.create!(user: d, interest: badminton)

category = InterestCategory.create(name: "Going Out")
Interest.create(name: "Bars", interest_category_id: category.id)
Interest.create(name: "Clubs", interest_category_id: category.id)
Interest.create(name: "Going to the park", interest_category_id: category.id)
Interest.create(name: "Dancing", interest_category_id: category.id)
Interest.create(name: "Pubs", interest_category_id: category.id)
Interest.create(name: "Speakeasies", interest_category_id: category.id)
Interest.create(name: "Outdoor party", interest_category_id: category.id)
Interest.create(name: "BBQ", interest_category_id: category.id)
Interest.create(name: "Cocktails", interest_category_id: category.id)

category = InterestCategory.create(name: "Food")
Interest.create(name: "Vegan", interest_category_id: category.id)
Interest.create(name: "Meat lover", interest_category_id: category.id)
Interest.create(name: "Street food", interest_category_id: category.id)
Interest.create(name: "Gluten free", interest_category_id: category.id)
Interest.create(name: "Vegetarian", interest_category_id: category.id)
Interest.create(name: "Fast-food", interest_category_id: category.id)
Interest.create(name: "Haut cuisine", interest_category_id: category.id)
Interest.create(name: "International", interest_category_id: category.id)

category = InterestCategory.create(name: "Sports")
Interest.create(name: "Tennis", interest_category_id: category.id)
Interest.create(name: "Cycling", interest_category_id: category.id)
Interest.create(name: "Scuba diving2", interest_category_id: category.id)
Interest.create(name: "Windsurfing", interest_category_id: category.id)
Interest.create(name: "Football", interest_category_id: category.id)
Interest.create(name: "Gym", interest_category_id: category.id)
Interest.create(name: "Horse riding", interest_category_id: category.id)
Interest.create(name: "Basketball", interest_category_id: category.id)
Interest.create(name: "Climbing", interest_category_id: category.id)
Interest.create(name: "Surfing", interest_category_id: category.id)
Interest.create(name: "Baseball", interest_category_id: category.id)
Interest.create(name: "Martial arts", interest_category_id: category.id)
Interest.create(name: "Pole dancing", interest_category_id: category.id)
Interest.create(name: "Hockey", interest_category_id: category.id)
Interest.create(name: "Badmington", interest_category_id: category.id)
Interest.create(name: "Running", interest_category_id: category.id)
Interest.create(name: "Crossfit", interest_category_id: category.id)
Interest.create(name: "Skiing", interest_category_id: category.id)
Interest.create(name: "Snowboarding", interest_category_id: category.id)
Interest.create(name: "Skating", interest_category_id: category.id)
Interest.create(name: "Table tennis", interest_category_id: category.id)
Interest.create(name: "Volleyball", interest_category_id: category.id)
Interest.create(name: "Hiking", interest_category_id: category.id)
Interest.create(name: "Yoga", interest_category_id: category.id)

category = InterestCategory.create(name: "Music")
# interest_category: category
Interest.create(name: "Classical", interest_category_id: category.id)
Interest.create(name: "Rock", interest_category_id: category.id)
Interest.create(name: "Alternative", interest_category_id: category.id)
Interest.create(name: "Electronic", interest_category_id: category.id)
Interest.create(name: "Jazz", interest_category_id: category.id)
Interest.create(name: "Punk", interest_category_id: category.id)
Interest.create(name: "Country", interest_category_id: category.id)
Interest.create(name: "K-pop", interest_category_id: category.id)
Interest.create(name: "A Capella", interest_category_id: category.id)
Interest.create(name: "Pop", interest_category_id: category.id)

# category = InterestCategory.create(name: "Personality")
# Interest.create(name: "Cheerful", interest_category_id: category.id)
# Interest.create(name: "Adventurous", interest_category_id: category.id)
# Interest.create(name: "Adrenaline junkie", interest_category_id: category.id)
# Interest.create(name: "Spontaneous", interest_category_id: category.id)
# Interest.create(name: "Chill", interest_category_id: category.id)
# Interest.create(name: "Punk", interest_category_id: category.id)
# Interest.create(name: "Country", interest_category_id: category.id)
# Interest.create(name: "K-pop", interest_category_id: category.id)
# Interest.create(name: "A Capella", interest_category_id: category.id)
# Interest.create(name: "Pop", interest_category_id: category.id)

