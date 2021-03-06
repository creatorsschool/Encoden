# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Course.destroy_all
Chapter.destroy_all
Lesson.destroy_all

User.create(name: "admin", email: 'admin@gmail.com', password: 'teste', teacher: true)
User.create(name: "user", email: 'user@gmail.com', password: 'teste', teacher: false)

Course.create(name: "Web Development", description: "This is first Course", duration: 10, price: 110, user_id: 1, paid: false)
Chapter.create(name: "Introduction to websites", description: "First Chapter from course 1", course_id: 1)
Lesson.create(name: "Education, understanding an implementation", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 1)
Lesson.create(name: "Image and file sizes explained ", description: "Lesson 2 from Chapter 1 and Course 1", chapter_id: 1)
Lesson.create(name: "How to resize images correctly Part 1", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 1)
Lesson.create(name: "How to resize images correctly Part 2", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 1)
Lesson.create(name: "How Web sites work", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 1)
Lesson.create(name: "Downloading files for the Web site", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 1)

Chapter.create(name: "Autoresponders", description: "First Chapter from course 1", course_id: 1)
Lesson.create(name: "How email works", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 2)
Lesson.create(name: "Working with autoresponders", description: "Lesson 2 from Chapter 1 and Course 1", chapter_id: 2)
Lesson.create(name: "Email Marketing", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 2)
Lesson.create(name: "Spamming 101", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 2)
Lesson.create(name: "Spamming 102", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 2)
Lesson.create(name: "Email Analytics", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 2)

Chapter.create(name: "Spamming", description: "First Chapter from course 1", course_id: 1)
Lesson.create(name: "How email works", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 3)
Lesson.create(name: "Working with autoresponders", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 3)
Lesson.create(name: "Email Marketing", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 3)
Lesson.create(name: "Spamming 101", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 3)
Lesson.create(name: "Spamming 102", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 3)
Lesson.create(name: "Email Analytics", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 3)

Chapter.create(name: "Email marketing", description: "First Chapter from course 1", course_id: 1)
Lesson.create(name: "How email works", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 4)
Lesson.create(name: "Working with autoresponders", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 4)
Lesson.create(name: "Email Marketing", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 4)
Lesson.create(name: "Spamming 101", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 4)
Lesson.create(name: "Spamming 102", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 4)
Lesson.create(name: "Email Analytics", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 4)

Course.create(name: "Blogging 101", description: "This is second Course", duration: 22, price: 99.99, user_id: 1, paid: false)
Chapter.create(name: "Blogging", description: "First Chapter from course 1", course_id: 2)
Lesson.create(name: "How email works", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 5)
Lesson.create(name: "Working with autoresponders", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 5)
Lesson.create(name: "Email Marketing", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 5)
Lesson.create(name: "Spamming 101", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 5)
Lesson.create(name: "Spamming 102", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 5)
Lesson.create(name: "Email Analytics", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 5)


Course.create(name: "Servers", description: "This is second Course", duration: 10, price: 35, user_id: 1, paid: false)
Chapter.create(name: "Blogging", description: "First Chapter from course 1", course_id: 3)
Lesson.create(name: "How email works", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 6)
Lesson.create(name: "Working with autoresponders", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 6)
Lesson.create(name: "Email Marketing", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 6)
Lesson.create(name: "Spamming 101", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 6)
Lesson.create(name: "Spamming 102", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 6)
Lesson.create(name: "Email Analytics", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 6)
