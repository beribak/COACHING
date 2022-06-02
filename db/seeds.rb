# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "creating database"
User.destroy_all
Lesson.destroy_all
Category.destroy_all

puts "creating users"
user1 = User.create( first_name: "Alijah", last_name: "Proctor", email: "alijahl@gmailcom", password: "Lewagon123", description: "Hello! I am Alijah and I will teach you English.", coach: true, refugee: false )
user2 = User.create( first_name: "Barbara", last_name: "Adkins", email: "barbara@gmailcom", password: "Lewagon123", description: "Hello! I am Barbara and I will teach you Ruby.", coach: true, refugee: false )
user3 = User.create( first_name: "Fiona", last_name: "Fields", email: "fiona@gmailcom", password: "Lewagon123", description: "Hello! I am Fiona and I will teach you Psycology.", coach: true, refugee: false )


user5 = User.create( first_name: "Marley", last_name: "Hoover", email: "marley@gmailcom", password: "Lewagon123", description: "Hello! I am Marley, I come from Syria", coach: false, refugee: true )
user6 = User.create( first_name: "Carlee", last_name: "Ware", email: "carlee@gmailcom", password: "Lewagon123", description: "Hello! I am Carlee, I come from Sri Lanka", coach: false, refugee: true )
user7 = User.create( first_name: "Darryl", last_name: "Peck", email: "darryl@gmailcom", password: "Lewagon123", description: "Hello! I am Darryl, I come from Algeria", coach: false, refugee: true )

puts "creating categories"
category1 = Category.create( name:"Learn new language" )
category2 = Category.create( name:"Programming" )
category3 = Category.create( name:"Life Coaching" )

puts "creating lessons"
lesson1 = Lesson.create!( user: user1, category: category1, title: "English lesson", description: "English lesson for beginners", places: 10, start_date: "2023-02-04", end_date: "2023-05-04", address: "37 Rue Rodier, 75009 Paris, France")
lesson2 = Lesson.create!( user: user2, category: category2, title: "Ruby lesson", description: "Ruby lesson for beginners", places: 10, start_date: "2023-02-04", end_date: "2023-05-04", address: "32 Rue Blanche, 75009 Paris, France")
lesson3 = Lesson.create!( user: user3, category: category3, title: "Psycology lesson", description: "Psycology lesson for beginners", places: 10, start_date: "2023-02-04", end_date: "2023-05-04", address: "25-1 Rue de Miromesnil, 75008 Paris, France")
lesson4 = Lesson.create!( user: user1, category: category1, title: "English lesson", description: "English  for advance", places: 10, start_date: "2023-03-04", end_date: "2023-02-06", address: "37 Rue Rodier, 75009 Paris, France")
lesson5 = Lesson.create!( user: user2, category: category2, title: "Ruby lesson", description: "Ruby lesson for advance", places: 10, start_date: "2023-03-04", end_date: "2023-02-06", address: "32 Rue Blanche, 75009 Paris, France")
lesson6 = Lesson.create!( user: user3, category: category3, title: "Psycology lesson", description: "Psycology lesson for advance", places: 10, start_date: "2023-03-04", end_date: "2023-02-06", address: "25-1 Rue de Miromesnil, 75008 Paris, France")

puts "finish seeding"
