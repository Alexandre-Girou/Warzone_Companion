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
Deck.destroy_all

puts "Creating Users..."

users = []
users << user_1 = User.new(email: "mail1@mail.com", password: "123456", username: "Mar")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_1.photo.attach(io: file, filename: "placeholder_img")
user_1.save!
users << user_2 = User.create!(email: "mail2@mail.com", password: "123456", username: "Ale")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_2.photo.attach(io: file, filename: "placeholder_img")
user_2.save!
users << user_3 = User.create!(email: "mail3@mail.com", password: "123456", username: "Cha")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_3.photo.attach(io: file, filename: "placeholder_img")
user_3.save!
users << user_4 = User.create!(email: "mail4@mail.com", password: "123456", username: "Lom")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_4.photo.attach(io: file, filename: "placeholder_img")
user_4.save!
users << user_5 = User.create!(email: "mail5@mail.com", password: "123456", username: "Rom")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_5.photo.attach(io: file, filename: "placeholder_img")
user_5.save!
users << user_6 = User.create!(email: "mail6@mail.com", password: "123456", username: "Jul")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_6.photo.attach(io: file, filename: "placeholder_img")
user_6.save!
users << user_7 = User.create!(email: "mail7@mail.com", password: "123456", username: "Dim")
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614594496/avatar_user_ghougp.png")
user_7.photo.attach(io: file, filename: "placeholder_img")
user_7.save!

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

puts "Creating Cards..."

cards = []
cards << card_1 = Card.new(title: "Jump", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_1.photo.attach(io: file, filename: "placeholder_img")
card_1.save!
cards << card_2 = Card.create!(title: "Slide", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_2.photo.attach(io: file, filename: "placeholder_img")
card_2.save!
cards << card_3 = Card.create!(title: "Shoot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_3.photo.attach(io: file, filename: "placeholder_img")
card_3.save!
cards << card_4 = Card.create!(title: "HeadShot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_4.photo.attach(io: file, filename: "placeholder_img")
card_4.save!
cards << card_5 = Card.create!(title: "Triple HeadShot", content: lorem, category: "Tricks", level: "Beginner", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_5.photo.attach(io: file, filename: "placeholder_img")
card_5.save!
cards << card_6 = Card.create!(title: "BackFlip 1.0.1", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_6.photo.attach(io: file, filename: "placeholder_img")
card_6.save!
cards << card_7 = Card.create!(title: "Snipe 1.0.1", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_7.photo.attach(io: file, filename: "placeholder_img")
card_7.save!
cards << card_8 = Card.create!(title: "Jump and Slide", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_8.photo.attach(io: file, filename: "placeholder_img")
card_8.save!
cards << card_9 = Card.create!(title: "Hide", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_9.photo.attach(io: file, filename: "placeholder_img")
card_9.save!
cards << card_10 = Card.create!(title: "Shoot a knife", content: lorem, category: "Tricks", level: "Intermediate", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_10.photo.attach(io: file, filename: "placeholder_img")
card_10.save!
cards << card_11 = Card.create!(title: "Kill everyone", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_11.photo.attach(io: file, filename: "placeholder_img")
card_11.save!
cards << card_12 = Card.create!(title: "Gulag", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_12.photo.attach(io: file, filename: "placeholder_img")
card_12.save!
cards << card_13 = Card.create!(title: "Explode a car", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_13.photo.attach(io: file, filename: "placeholder_img")
card_13.save!
cards << card_14 = Card.create!(title: "Boom", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_14.photo.attach(io: file, filename: "placeholder_img")
card_14.save!
cards << card_15 = Card.create!(title: "Shoot a Glock with your FFAR-1", content: lorem, category: "Tricks", level: "Confirmed", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_15.photo.attach(io: file, filename: "placeholder_img")
card_15.save!
cards << card_16 = Card.create!(title: "AK-47", content: lorem, category: "Weapons", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_16.photo.attach(io: file, filename: "placeholder_img")
card_16.save!
cards << card_17 = Card.create!(title: "M4A1", content: lorem, category: "Weapons", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_17.photo.attach(io: file, filename: "placeholder_img")
card_17.save!
cards << card_18 = Card.create!(title: "RAM-7", content: lorem, category: "Weapons", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_18.photo.attach(io: file, filename: "placeholder_img")
card_18.save!
cards << card_19 = Card.create!(title: "FFAR-1", content: lorem, category: "Weapons", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_19.photo.attach(io: file, filename: "placeholder_img")
card_19.save!
cards << card_20 = Card.create!(title: "Glock", content: lorem, category: "Weapons", creator: users.sample)
file = URI.open("https://res.cloudinary.com/ddakvgx3a/image/upload/v1614588816/fcsnyzbmg3un18jaeg9s.jpg")
card_20.photo.attach(io: file, filename: "placeholder_img")
card_20.save!

puts "Creating Comments..."

comment_1 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_2 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_3 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_4 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)
comment_5 = Comment.create!(content: lorem, creator: users.sample, card: cards.sample)

deck_1 = Deck.create!(name: "Favorites", user: user_1)