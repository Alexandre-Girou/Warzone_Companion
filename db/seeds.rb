# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Card.destroy_all
User.destroy_all


users = []
users << user_1 = User.create!(email: "mail1@mail.com", password: "123456", username: "Mar")
users << user_2 = User.create!(email: "mail2@mail.com", password: "123456", username: "Ale")
users << user_3 = User.create!(email: "mail3@mail.com", password: "123456", username: "Cha")
users << user_4 = User.create!(email: "mail4@mail.com", password: "123456", username: "Lom")
users << user_5 = User.create!(email: "mail5@mail.com", password: "123456", username: "Rom")

p User.first

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

card_1 = Card.new(title: "Jump", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
card_1.save
card_2 = Card.new(title: "Slide", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
card_2.save
card_3 = Card.new(title: "Shoot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
card_3.save
card_4 = Card.new(title: "HeadShot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
card_4.save
card_5 = Card.new(title: "Triple HeadShot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
card_5.save
card_6 = Card.new(title: "BackFlip 1.0.1", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
card_6.save
card_7 = Card.new(title: "Snipe 1.0.1", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
card_7.save
card_8 = Card.new(title: "Jump and Slide", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
card_8.save
card_9 = Card.new(title: "Hide", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
card_9.save
card_10 = Card.new(title: "Shoot a knife", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
card_10.save
card_11 = Card.new(title: "Kill everyone", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
card_11.save
card_12 = Card.new(title: "Gulag", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
card_12.save
card_13 = Card.new(title: "Explode a car", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
card_13.save
card_14 = Card.new(title: "Boom", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
card_14.save
card_15 = Card.new(title: "Shoot a Glock with your FFAR-1", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
card_15.save
card_16 = Card.new(title: "AK-47", content: lorem, category: "Weapons", level: "Beginner", creator: users.sample)
card_16.save
card_17 = Card.new(title: "M4A1", content: lorem, category: "Weapons", level: "Intermediate", creator: users.sample)
card_17.save
card_18 = Card.new(title: "RAM-7", content: lorem, category: "Weapons", level: "Intermediate", creator: users.sample)
card_18.save
card_19 = Card.new(title: "FFAR-1", content: lorem, category: "Weapons", level: "Confirmed", creator: users.sample)
card_19.save
card_20 = Card.new(title: "Glock", content: lorem, category: "Weapons", level: "Confirmed", creator: users.sample)
card_20.save

comment_1 = Comment.new(content: lorem)
comment_2 = Comment.new(content: lorem)
comment_3 = Comment.new(content: lorem)
comment_4 = Comment.new(content: lorem)
comment_5 = Comment.new(content: lorem)