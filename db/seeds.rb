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
users << user_6 = User.create!(email: "mail6@mail.com", password: "123456", username: "Jul")
users << user_7 = User.create!(email: "mail7@mail.com", password: "123456", username: "Dim")

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

cards = []
cards << card_1 = Card.create!(title: "Jump", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
cards << card_2 = Card.create!(title: "Slide", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
cards << card_3 = Card.create!(title: "Shoot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
cards << card_4 = Card.create!(title: "HeadShot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
cards << card_5 = Card.create!(title: "Triple HeadShot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
cards << card_6 = Card.create!(title: "BackFlip 1.0.1", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
cards << card_7 = Card.create!(title: "Snipe 1.0.1", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
cards << card_8 = Card.create!(title: "Jump and Slide", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
cards << card_9 = Card.create!(title: "Hide", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
cards << card_10 = Card.create!(title: "Shoot a knife", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
cards << card_11 = Card.create!(title: "Kill everyone", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
cards << card_12 = Card.create!(title: "Gulag", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
cards << card_13 = Card.create!(title: "Explode a car", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
cards << card_14 = Card.create!(title: "Boom", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
cards << card_15 = Card.create!(title: "Shoot a Glock with your FFAR-1", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
cards << card_16 = Card.create!(title: "AK-47", content: lorem, category: "Weapons", level: "Beginner", creator: users.sample)
cards << card_17 = Card.create!(title: "M4A1", content: lorem, category: "Weapons", level: "Intermediate", creator: users.sample)
cards << card_18 = Card.create!(title: "RAM-7", content: lorem, category: "Weapons", level: "Intermediate", creator: users.sample)
cards << card_19 = Card.create!(title: "FFAR-1", content: lorem, category: "Weapons", level: "Confirmed", creator: users.sample)
cards << card_20 = Card.create!(title: "Glock", content: lorem, category: "Weapons", level: "Confirmed", creator: users.sample)

comment_1 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_2 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_3 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_4 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_5 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)