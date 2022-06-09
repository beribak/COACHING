puts "creating database"
Question.destroy_all
Review.destroy_all
Booking.destroy_all
Answer.destroy_all
User.destroy_all
Lesson.destroy_all
Category.destroy_all

puts "creating users"
user1 = User.create( first_name: "Alijah", last_name: "Proctor", email: "alijahl@gmail.com", password: "Lewagon123", description: "Hello! I am Alijah and I have been teaching engish for more then 7 yers now, teaching all sorts of ages, from kids to elderly.", coach: true, refugee: false )
user2 = User.create( first_name: "Barbara", last_name: "Adkins", email: "barbara@gmail.com", password: "Lewagon123", description: "Hello! I am Barbara and I have been a freelance web developer/UX designer for 8 years. I have passin for technology, I love hiking and do kickboxing on the weekends", coach: true, refugee: false )
user3 = User.create( first_name: "Fiona", last_name: "Fields", email: "fiona@gmail.com", password: "Lewagon123", description: "Hello! I am Fiona and I have worked as a clinical psychologist for 12 years, as wel as a life coach for the last 3 years..", coach: true, refugee: false )


user5 = User.create( first_name: "Marley", last_name: "Hoover", email: "marley@gmail.com", password: "Lewagon123", description: "Hello! I am Marley, I come from Syria", coach: false, refugee: true )
user6 = User.create( first_name: "Carlee", last_name: "Ware", email: "carlee@gmail.com", password: "Lewagon123", description: "Hello! I am Carlee, I come from Sri Lanka", coach: false, refugee: true )
user7 = User.create( first_name: "Darryl", last_name: "Peck", email: "darryl@gmail.com", password: "Lewagon123", description: "Hello! I am Darryl, I come from Algeria", coach: false, refugee: true )
user8 = User.create( first_name: "Oleksii", last_name: "Boiko", email: "oleksii@gmail.com", password: "Lewagon123", description: "Hello! I am Oleksii, I come from Ukraine, I have arrived in Netherlands two months ago, escaping the war, with my wife and kids. I hope to integrate in the Ducth society, and hope to get some support from this platform", coach: false, refugee: true )

puts "creating categories"
category1 = Category.create( name:"Language Learning" )
category2 = Category.create( name:"IT Skills/Programming" )
category3 = Category.create( name:"Psychotherapy/ Mind & Body Connection " )
category4 = Category.create( name:"Entrepreneurial Mind" )
category5 = Category.create( name:"Life Coaching" )

puts "creating lessons"
file1 = URI.open('https://media.istockphoto.com/photos/multiethnic-group-of-children-and-english-concept-picture-id511281043?s=612x612')
lesson1 = Lesson.create!( user: user1, category: category1, title: "English / beginner", description: "I have been teaching engish for more then 7 yers now, teaching all sorts of ages, from kids to elderly. I would love to help those newcomers who form from wars and conflict to save their lives and ended up in Netherlands. I have a small office space that can fit 10 people, that will serve as a setting for our classes.", places: 10, start_date: "2022-07-04", end_date: "2022-11-04", address: "Bloemstraat 2-42, 1016 KD Amsterdam, Netherlands")
lesson1.photo.attach(io: file1, filename: 'nes1.png', content_type: 'image/png')

file2 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/07/sportsmobile-four-by-four-09-759x500.jpg')
lesson2 = Lesson.create!( user: user2, category: category2, title: "Intro Into Web Dev", description: "Hey there, have you found yourself in a new environment, struggling to apply your current skills in a job marke? Would you like to learn new skills, develop a new lucrative career or simply become more tech savvy. Come and join our small local class, which will give a intro in web development, using basic HTML, CSS, Javascript", places: 6, start_date: "2023-06-25", end_date: "2023-08-21", address: "Egelantiersstraat, 1015 PR Amsterdam, Netherlands")
lesson2.photo.attach(io: file2, filename: 'nes2.png', content_type: 'image/png')

file3 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/07/sportsmobile-four-by-four-09-759x500.jpg')
lesson3 = Lesson.create!( user: user3, category: category3, title: "Trauma-healing therapy", description: "I have worked as a clinical psychologist for 12 years, and I would like to offer my service free of charcge to people tramatised by was in Ukraine.", places: 1, start_date: "2022-06-15", end_date: "2023-06-15", address: "Kerkstraat 287A, 1017 GX Amsterdam, Netherlands")
lesson3.photo.attach(io: file3, filename: 'nes3.png', content_type: 'image/png')

file4 = URI.open('https://media.istockphoto.com/photos/multiethnic-group-of-children-and-english-concept-picture-id511281043?s=612x612')
lesson4 = Lesson.create!( user: user1, category: category1, title: "English / advanced", description: "I have been teaching engish for more then 7 yers now, teaching all sorts of ages, from kids to elderly. I would love to help those newcomers who form from wars and conflict to save their lives and ended up in Netherlands. I have a small office space that can fit 10 people, that will serve as a setting for our classes.", places: 10, start_date: "2022-07-11", end_date: "2022-11-11", address: "Bloemstraat 2-42, 1016 KD Amsterdam, Netherlands")
lesson4.photo.attach(io: file4, filename: 'nes4.png', content_type: 'image/png')

file5 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/07/sportsmobile-four-by-four-09-759x500.jpg')
lesson5 = Lesson.create!( user: user2, category: category2, title: "Intro Into UX design", description: "Hey there, have you found yourself in a new environment, struggling to apply your current skills in a job marke? Would you like to learn new skills, develop a new lucrative career or simply become more tech savvy. Come and join our small local class, which will give a intro in UX design, using basic Figma, HTML and CSS", places: 4, start_date: "2023-06-22", end_date: "2023-08-17", address: "Egelantiersstraat, 1015 PR Amsterdam, Netherlands")
lesson5.photo.attach(io: file5, filename: 'nes5.png', content_type: 'image/png')

file6 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/07/sportsmobile-four-by-four-09-759x500.jpg')
lesson6 = Lesson.create!( user: user3, category: category5, title: "Life Reseting", description: "I have worked as a clinical psychologist for 12 years, as wel as a life coach for the last 3 years.  I would like to offer my service free of charcge to people tramatised by was in Ukraine, who have to start their lifes from scratch in a new foregn environment", places: 6, start_date: "2022-06-15", end_date: "2023-08-15", address: "Kerkstraat 287A, 1017 GX Amsterdam, Netherlands")
lesson6.photo.attach(io: file6, filename: 'nes6.png', content_type: 'image/png')



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
