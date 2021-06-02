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
# UserInterest.destroy_all
InterestCategory.destroy_all
User.destroy_all

sports = InterestCategory.create!(name: 'Sports')
food = InterestCategory.create!(name: 'Food')
tennis = Interest.create!(name: 'Tennis', interest_category: sports)
volleyball = Interest.create!(name: 'Volleyball', interest_category: sports)
swimming = Interest.create!(name: 'Swimming', interest_category: sports)
badminton = Interest.create!(name: 'Badminton', interest_category: sports)
restaurants = Interest.create!(name: 'Restaurants', interest_category: food)
coffee = Interest.create!(name: 'Coffee', interest_category: food)

a = User.create!(username: 'ana', email: 'amail2@test.com', password: '123456')
UserInterest.create!(user: a, interest: tennis)
# UserInterest.create!(user: a, interest: volleyball)
# UserInterest.create!(user: a, interest: swimming)
# UserInterest.create!(user: a, interest: badminton)

b = User.create!(username: 'britta', email: 'bmail@test.com', password: '123456')
UserInterest.create!(user: b, interest: tennis)
UserInterest.create!(user: b, interest: coffee)
# UserInterest.create!(user: b, interest: restaurants)
# UserInterest.create!(user: b, interest: badminton)

# c = User.new(username: 'cris', email: 'cmail@test.com', password: '123456')
# UserInterest.create!(user: c, interest: restaurants)
# UserInterest.create!(user: c, interest: coffee)

# d = User.new(username: 'dan', email: 'dmail@test.com', password: '123456')
# UserInterest.create!(user: d, interest: tennis)
# UserInterest.create!(user: d, interest: volleyball)
# UserInterest.create!(user: d, interest: swimming)
# UserInterest.create!(user: d, interest: badminton)



