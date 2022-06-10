puts "creating database"
Question.destroy_all
Review.destroy_all
Booking.destroy_all
User.destroy_all
Lesson.destroy_all
Category.destroy_all
Answer.destroy_all


puts "creating users"
<<<<<<< HEAD
user1 = User.create( first_name: "Alijah", last_name: "Proctor", email: "alijahl@gmail.com", password: "Lewagon123", description: "Hello! I am Alijah and I have been teaching engish for more than 7 yers now, teaching all sorts of ages, from kids to elderly.", coach: true, refugee: false )
user2 = User.create( first_name: "Barbara", last_name: "Adkins", email: "barbara@gmail.com", password: "Lewagon123", description: "Hello! I am Barbara and I have been a freelance web developer/UX designer for 8 years. I have passion for technology, I love hiking and do kickboxing on the weekends", coach: true, refugee: false )
user3 = User.create( first_name: "Fiona", last_name: "Fields", email: "fiona@gmail.com", password: "Lewagon123", description: "Hello! I am Fiona and I have worked as a clinical psychologist for 12 years, as wel as a life coach for the last 3 years..", coach: true, refugee: false )
=======
user1 = User.create( first_name: "Denis", last_name: "Proctor", email: "alijahl@gmail.com", password: "Lewagon123", description: "Hello! I am Alijah and I have been teaching English and Dutch for more then 7 years now, working with all ages, from kids to elderly.", coach: true, refugee: false )
user2 = User.create( first_name: "Barbara", last_name: "Adkins", email: "barbara@gmail.com", password: "Lewagon123", description: "Hello! I am Barbara and I have been a freelance web developer/UX designer for 8 years. I have a passion for technology, I love hiking and do kickboxing on the weekends", coach: true, refugee: false )
user3 = User.create( first_name: "Fiona", last_name: "Fields", email: "fiona@gmail.com", password: "Lewagon123", description: "Hello! I am Fiona and I have worked as a clinical psychologist for 12 years, as well as a life coach for the last 3 years..", coach: true, refugee: false )
>>>>>>> 202f558d75c6721c8302707daa545730b2613b73


user5 = User.create( first_name: "Marley", last_name: "Hoover", email: "marley@gmail.com", password: "Lewagon123", description: "Hello! I am Marley, I come from Syria", coach: false, refugee: true )
user6 = User.create( first_name: "Carlee", last_name: "Ware", email: "carlee@gmail.com", password: "Lewagon123", description: "Hello! I am Carlee, I come from Sri Lanka", coach: false, refugee: true )
user7 = User.create( first_name: "Darryl", last_name: "Peck", email: "darryl@gmail.com", password: "Lewagon123", description: "Hello! I am Darryl, I come from Algeria", coach: false, refugee: true )
user8 = User.create( first_name: "Oleksii", last_name: "Boiko", email: "oleksii@gmail.com", password: "Lewagon123", description: "Hello! I am Oleksii, I come from Ukraine, I have arrived in Netherlands two months ago, escaping the war, with my wife and kids. I hope to integrate in the Dutch society, and hope to get some support from this platform", coach: false, refugee: true )

puts "creating categories"
category1 = Category.create( name:"Language Learning" )
category2 = Category.create( name:"IT Skills/Programming" )
category3 = Category.create( name:"Psychotherapy/ Mind & Body Connection " )
category4 = Category.create( name:"Entrepreneurial Mind" )
category5 = Category.create( name:"Life Coaching" )

puts "creating lessons"
file1 = URI.open('https://images.unsplash.com/photo-1543832923-44667a44c804?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1644&q=80')
lesson1 = Lesson.create!( user: user1, category: category1, title: "English / beginner", description: "I have been teaching engish for more then 7 yers now, teaching all sorts of ages, from kids to elderly. I would love to help those newcomers who form from wars and conflict to save their lives and ended up in Netherlands. I have a small office space that can fit 10 people, that will serve as a setting for our classes.", places: 10, start_date: "2022-05-04", end_date: "2022-06-04", address: "Bloemstraat, Amsterdam")
lesson1.photo.attach(io: file1, filename: 'nes1.png', content_type: 'image/png')

file2 = URI.open('https://images.unsplash.com/photo-1618335829737-2228915674e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
lesson2 = Lesson.create!( user: user2, category: category2, title: "Intro Into Web Dev", description: "Hey there, have you found yourself in a new environment, struggling to apply your current skills in a job marke? Would you like to learn new skills, develop a new lucrative career or simply become more tech savvy. Come and join our small local class, which will give you a intro in web development, using basic HTML, CSS, Javascript", places: 6, start_date: "2023-06-25", end_date: "2023-08-21", address: "Egelantiersstraat ,Amsterdam")
lesson2.photo.attach(io: file2, filename: 'nes2.png', content_type: 'image/png')

file3 = URI.open('https://images.unsplash.com/photo-1573511860302-28c524319d2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
lesson3 = Lesson.create!( user: user3, category: category3, title: "Trauma-healing therapy", description: "I have worked as a clinical psychologist for 12 years, and I would like to offer my service free of charcge to people traumatised by the war in Ukraine.", places: 3, start_date: "2022-06-15", end_date: "2023-06-15", address: "Kerkstraat, Amsterdam")
lesson3.photo.attach(io: file3, filename: 'nes3.png', content_type: 'image/png')

file4 = URI.open('https://images.unsplash.com/photo-1483972117325-ce4920ff780b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')
lesson4 = Lesson.create!( user: user1, category: category1, title: "English / advanced", description: "I have been teaching English for more then 7 yers now, working with all ages, from kids to elderly. I would love to help those newcomers who fled wars and conflicts to save their lives and ended up in Netherlands. I have a small office space that can fit 10 people, that will serve as a setting for our classes.", places: 8, start_date: "2022-07-11", end_date: "2022-11-11", address: "Bloemstraat, Amsterdam")
lesson4.photo.attach(io: file4, filename: 'nes4.png', content_type: 'image/png')

file5 = URI.open('https://images.unsplash.com/photo-1576153192396-180ecef2a715?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
lesson5 = Lesson.create!( user: user2, category: category2, title: "Intro Into UX design", description: "Hey there, have you found yourself in a new environment, struggling to apply your current skills in a job marke? Would you like to learn new skills, develop a new lucrative career or simply become more tech savvy. Come and join our small local class, which will give you an intro in UX design, using basic Figma, HTML and CSS", places: 4, start_date: "2023-06-22", end_date: "2023-08-17", address: "Egelantiersstraat, Amsterdam")
lesson5.photo.attach(io: file5, filename: 'nes5.png', content_type: 'image/png')

file6 = URI.open('https://images.unsplash.com/photo-1517960413843-0aee8e2b3285?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2099&q=80')
lesson6 = Lesson.create!( user: user3, category: category5, title: "Life Reseting", description: "I have worked as a clinical psychologist for 12 years, as wel as a life coach for the last 3 years.  I would like to offer my service free of charcge to people traumatised by the war in Ukraine, who have to start their lives from scratch in a new foreign environment", places: 6, start_date: "2022-06-15", end_date: "2023-08-15", address: "Kerkstraat, Amsterdam")
lesson6.photo.attach(io: file6, filename: 'nes6.png', content_type: 'image/png')

booking1 = Booking.create!(status: true, user: user8, lesson: lesson1)


puts "creating questions"
q1 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson1.id)

q4 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson2.id)

q7 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson3.id)

q10 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson4.id)

q13 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson5.id)

q16 = Question.create!(content: "Please introduce yourself!", lesson_id: lesson6.id)

puts "creating reviews"

review1 = Review.create( description:"Nice coach and lesson, the coach has a good approach to learning!", lesson_id: lesson1.id, user: user5, rating: 4 )
review1 = Review.create( description:"Very nice coach and lesson, I suggest it !", lesson_id: lesson1.id, user: user6, rating: 5 )

review2 = Review.create( description:"Good coach and lesson", lesson_id: lesson2.id, user: user6, rating: 4 )
review1 = Review.create( description:"Nice coach and lesson, the coach has a good approach to learning!", lesson_id: lesson2.id, user: user7, rating: 4 )

review3 = Review.create( description:"Very nice coach and lesson, I suggest it !", lesson_id: lesson3.id, user: user6, rating: 5 )
review4 = Review.create( description:"Very nice coach and lesson, I suggest it !", lesson_id: lesson4.id, user: user6, rating: 5 )
review5 = Review.create( description:"Good coach and lesson", lesson_id: lesson5.id, user: user7, rating: 4 )
review6 = Review.create( description:"Nice coach and lesson, the coach has a good approach to learning!", lesson_id: lesson6.id, user: user7, rating: 4 )

puts "finish seeding"
