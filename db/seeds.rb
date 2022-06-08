puts "creating database"
Booking.destroy_all
Answer.destroy_all
User.destroy_all
Lesson.destroy_all
Category.destroy_all

puts "creating users"
user1 = User.create( first_name: "Alijah", last_name: "Proctor", email: "alijahl@gmail.com", password: "Lewagon123", description: "Hello! I am Alijah and I will teach you English.", coach: true, refugee: false )
user2 = User.create( first_name: "Barbara", last_name: "Adkins", email: "barbara@gmail.com", password: "Lewagon123", description: "Hello! I am Barbara and I will teach you Ruby.", coach: true, refugee: false )
user3 = User.create( first_name: "Fiona", last_name: "Fields", email: "fiona@gmail.com", password: "Lewagon123", description: "Hello! I am Fiona and I will teach you Psycology.", coach: true, refugee: false )


user5 = User.create( first_name: "Marley", last_name: "Hoover", email: "marley@gmail.com", password: "Lewagon123", description: "Hello! I am Marley, I come from Syria", coach: false, refugee: true )
user6 = User.create( first_name: "Carlee", last_name: "Ware", email: "carlee@gmail.com", password: "Lewagon123", description: "Hello! I am Carlee, I come from Sri Lanka", coach: false, refugee: true )
user7 = User.create( first_name: "Darryl", last_name: "Peck", email: "darryl@gmail.com", password: "Lewagon123", description: "Hello! I am Darryl, I come from Algeria", coach: false, refugee: true )

puts "creating categories"
category1 = Category.create( name:"Learn new language" )
category2 = Category.create( name:"Programming" )
category3 = Category.create( name:"Life Coaching" )

puts "creating lessons"
lesson1 = Lesson.create!( user: user1, category: category1, title: "English / beginner", description: "English lesson for beginners", places: 10, start_date: "2023-02-04", end_date: "2023-05-04", address: "37 Rue Rodier, 75009 Paris, France")
lesson2 = Lesson.create!( user: user2, category: category2, title: "Ruby / beginner", description: "Ruby lesson for beginners", places: 10, start_date: "2023-02-04", end_date: "2023-05-04", address: "32 Rue Blanche, 75009 Paris, France")
lesson3 = Lesson.create!( user: user3, category: category3, title: "Psycology / beginner", description: "Psycology lesson for beginners", places: 10, start_date: "2023-02-04", end_date: "2023-05-04", address: "25-1 Rue de Miromesnil, 75008 Paris, France")
lesson4 = Lesson.create!( user: user1, category: category1, title: "English / advance", description: "English  for advance", places: 10, start_date: "2023-03-04", end_date: "2023-02-06", address: "37 Rue Rodier, 75009 Paris, France")
lesson5 = Lesson.create!( user: user2, category: category2, title: "Ruby  / adavance", description: "Ruby lesson for advance", places: 10, start_date: "2023-03-04", end_date: "2023-02-06", address: "32 Rue Blanche, 75009 Paris, France")
lesson6 = Lesson.create!( user: user3, category: category3, title: "Psycology  / advance", description: "Psycology lesson for advance", places: 10, start_date: "2023-03-04", end_date: "2023-02-06", address: "25-1 Rue de Miromesnil, 75008 Paris, France")

puts "creating questions"
q1 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson1.id)
q2 = Question.create!(content: "Why do you need to take this lesson ?", lesson_id: lesson1.id)
q3 = Question.create!(content: "Whats the level of your English at the moment?", lesson_id: lesson1.id)

q4 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson2.id)
q5 = Question.create!(content: "Why do you need to take this lesson ?", lesson_id: lesson2.id)
q6 = Question.create!(content: "Whats the level of your Ruby at the moment?", lesson_id: lesson2.id)

q7 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson3.id)
q8 = Question.create!(content: "Why do you need to take this lesson ?", lesson_id: lesson3.id)
q9 = Question.create!(content: "Whats the level of your Psycology at the moment?", lesson_id: lesson3.id)

q10 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson4.id)
q11 = Question.create!(content: "Why do you need to take this lesson ?", lesson_id: lesson4.id)
q12 = Question.create!(content: "Whats the level of your English  at the moment?", lesson_id: lesson4.id)

q13 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson5.id)
q14 = Question.create!(content: "Why do you need to take this lesson ?", lesson_id: lesson5.id)
q15 = Question.create!(content: "Whats the level of your Ruby at the moment?", lesson_id: lesson5.id)

q16 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson6.id)
q17 = Question.create!(content: "Why do you need to take this lesson ?", lesson_id: lesson6.id)
q18 = Question.create!(content: "Whats the level of your Psycology at the moment?", lesson_id: lesson6.id)

puts "creating reviews"

review1 = Review.create( description:"Nice coach and lesson, the coach has a good approach to learning!", lesson_id: lesson1.id, user: user5, rating: 4 )
review1 = Review.create( description:"Very nice coach and lesson, I suggest it !", lesson_id: lesson1.id, user: user6, rating: 5 )

review2 = Review.create( description:"Good coach and lesson", lesson_id: lesson2.id, user: user6, rating: 3 )
review1 = Review.create( description:"Nice coach and lesson, the coach has a good approach to learning!", lesson_id: lesson2.id, user: user7, rating: 4 )

review3 = Review.create( description:"Very nice coach and lesson, I suggest it !", lesson_id: lesson3.id, user: user6, rating: 5 )
review4 = Review.create( description:"Very nice coach and lesson, I suggest it !", lesson_id: lesson4.id, user: user6, rating: 5 )
review5 = Review.create( description:"Good coach and lesson", lesson_id: lesson5.id, user: user7, rating: 3 )
review6 = Review.create( description:"Nice coach and lesson, the coach has a good approach to learning!", lesson_id: lesson6.id, user: user7, rating: 4 )

puts "finish seeding"
