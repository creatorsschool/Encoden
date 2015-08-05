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

User.create(name: "admin", email: 'admin@gmail.com', password: 'teste')
User.create(name: "user", email: 'user@gmail.com', password: 'teste')

Course.create(name: "Course 1", description: "This is first Course", duration: 10, price: 200, user_id: 1)
Chapter.create(name: "Chapter 1", description: "First Chapter from course 1", course_id: 1)
Lesson.create(name: "Lesson 1", description: "Lesson 1 from Chapter 1 and Course 1", chapter_id: 1)

Course.create(name: "Course 2", description: "This is second Course", duration: 10, price: 200, user_id: 1)
Chapter.create(name: "Chapter 2", description: "First Chapter from course 2", course_id: 2)
Lesson.create(name: "Lesson 2", description: "Lesson 2 from Chapter 2 and Course 2", chapter_id: 1)
