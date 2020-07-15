# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying teachers"
Teacher.destroy_all

puts "destroying classes"
Klass.destroy_all

puts "destroying students"
Student.destroy_all

puts "destroying teacherclasses"
TeacherClass.destroy_all

puts "destroying conversations"
Conversation.destroy_all

puts "destroying studentclasses"
StudentClass.destroy_all

puts "creating teachers"
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Science", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Science", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Math", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Math", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "History", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "History", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "English", email: Faker::Internet.email)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "English", email: Faker::Internet.email)

puts "creating classes"
Klass.create(name: "Biology", subject: "Science")
Klass.create(name: "Chemistry", subject: "Science")
Klass.create(name: "Physics", subject: "Science")
Klass.create(name: "AP Biology", subject: "Science")

Klass.create(name: "Algebra 1", subject: "Math")
Klass.create(name: "Algebra 2", subject: "Math")
Klass.create(name: "Geometry", subject: "Math")
Klass.create(name: "AP Calculus", subject: "Math")

Klass.create(name: "US History 1", subject: "History")
Klass.create(name: "US History 2", subject: "History")
Klass.create(name: "Government & Politics", subject: "History")
Klass.create(name: "European History", subject: "History")

Klass.create(name: "English I", subject: "English")
Klass.create(name: "English II", subject: "English")
Klass.create(name: "English III", subject: "English")
Klass.create(name: "English IV", subject: "English")

puts "creating teacherclasses"
TeacherClass.create(teacher_id: 1, klass_id: 1)
TeacherClass.create(teacher_id: 1, klass_id: 2)
TeacherClass.create(teacher_id: 1, klass_id: 3)
TeacherClass.create(teacher_id: 1, klass_id: 4)

TeacherClass.create(teacher_id: 2, klass_id: 1)
TeacherClass.create(teacher_id: 2, klass_id: 2)
TeacherClass.create(teacher_id: 2, klass_id: 3)
TeacherClass.create(teacher_id: 2, klass_id: 4)

TeacherClass.create(teacher_id: 3, klass_id: 5)
TeacherClass.create(teacher_id: 3, klass_id: 6)
TeacherClass.create(teacher_id: 3, klass_id: 7)
TeacherClass.create(teacher_id: 3, klass_id: 8)

TeacherClass.create(teacher_id: 4, klass_id: 5)
TeacherClass.create(teacher_id: 4, klass_id: 6)
TeacherClass.create(teacher_id: 4, klass_id: 7)
TeacherClass.create(teacher_id: 4, klass_id: 8)

TeacherClass.create(teacher_id: 5, klass_id: 9)
TeacherClass.create(teacher_id: 5, klass_id: 10)
TeacherClass.create(teacher_id: 5, klass_id: 11)
TeacherClass.create(teacher_id: 5, klass_id: 12)

TeacherClass.create(teacher_id: 6, klass_id: 9)
TeacherClass.create(teacher_id: 6, klass_id: 10)
TeacherClass.create(teacher_id: 6, klass_id: 11)
TeacherClass.create(teacher_id: 6, klass_id: 12)

TeacherClass.create(teacher_id: 7, klass_id: 13)
TeacherClass.create(teacher_id: 7, klass_id: 14)
TeacherClass.create(teacher_id: 7, klass_id: 15)
TeacherClass.create(teacher_id: 7, klass_id: 16)

TeacherClass.create(teacher_id: 8, klass_id: 13)
TeacherClass.create(teacher_id: 8, klass_id: 14)
TeacherClass.create(teacher_id: 8, klass_id: 15)
TeacherClass.create(teacher_id: 8, klass_id: 16)

puts "creating students"
20.times do 
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday(min_age: 10, max_age: 18))
end

puts "creating studentclasses"
StudentClass.create(student_id: 1, teacher_class_id: 1)
StudentClass.create(student_id: 1, teacher_class_id: 3)
StudentClass.create(student_id: 1, teacher_class_id: 5)
StudentClass.create(student_id: 1, teacher_class_id: 7)
StudentClass.create(student_id: 2, teacher_class_id: 2)
StudentClass.create(student_id: 2, teacher_class_id: 4)
StudentClass.create(student_id: 2, teacher_class_id: 6)
StudentClass.create(student_id: 2, teacher_class_id: 8)
StudentClass.create(student_id: 3, teacher_class_id: 1)
StudentClass.create(student_id: 3, teacher_class_id: 3)
StudentClass.create(student_id: 3, teacher_class_id: 5)
StudentClass.create(student_id: 3, teacher_class_id: 7)
StudentClass.create(student_id: 4, teacher_class_id: 2)
StudentClass.create(student_id: 4, teacher_class_id: 4)
StudentClass.create(student_id: 4, teacher_class_id: 6)
StudentClass.create(student_id: 4, teacher_class_id: 8)

# StudentClass.create(student_id: 5, teacher_class_id: 1)
# StudentClass.create(student_id: 5, teacher_class_id: 5)
# StudentClass.create(student_id: 5, teacher_class_id: 9)
# StudentClass.create(student_id: 5, teacher_class_id: 13)
# StudentClass.create(student_id: 6, teacher_class_id: 2)
# StudentClass.create(student_id: 6, teacher_class_id: 6)
# StudentClass.create(student_id: 6, teacher_class_id: 10)
# StudentClass.create(student_id: 6, teacher_class_id: 14)
# StudentClass.create(student_id: 7, teacher_class_id: 3)
# StudentClass.create(student_id: 7, teacher_class_id: 7)
# StudentClass.create(student_id: 7, teacher_class_id: 11)
# StudentClass.create(student_id: 7, teacher_class_id: 15)
# StudentClass.create(student_id: 8, teacher_class_id: 4)
# StudentClass.create(student_id: 8, teacher_class_id: 8)
# StudentClass.create(student_id: 8, teacher_class_id: 12)
# StudentClass.create(student_id: 8, teacher_class_id: 16)

# StudentClass.create(student_id: 9, teacher_class_id: 1)
# StudentClass.create(student_id: 9, teacher_class_id: 5)
# StudentClass.create(student_id: 9, teacher_class_id: 9)
# StudentClass.create(student_id: 9, teacher_class_id: 13)
# StudentClass.create(student_id: 10, teacher_class_id: 2)
# StudentClass.create(student_id: 10, teacher_class_id: 6)
# StudentClass.create(student_id: 10, teacher_class_id: 10)
# StudentClass.create(student_id: 10, teacher_class_id: 14)
# StudentClass.create(student_id: 11, teacher_class_id: 3)
# StudentClass.create(student_id: 11, teacher_class_id: 7)
# StudentClass.create(student_id: 11, teacher_class_id: 11)
# StudentClass.create(student_id: 11, teacher_class_id: 15)
# StudentClass.create(student_id: 12, teacher_class_id: 4)
# StudentClass.create(student_id: 12, teacher_class_id: 8)
# StudentClass.create(student_id: 12, teacher_class_id: 12)
# StudentClass.create(student_id: 12, teacher_class_id: 16)

# StudentClass.create(student_id: 13, teacher_class_id: 1)
# StudentClass.create(student_id: 13, teacher_class_id: 5)
# StudentClass.create(student_id: 13, teacher_class_id: 9)
# StudentClass.create(student_id: 13, teacher_class_id: 13)
# StudentClass.create(student_id: 14, teacher_class_id: 2)
# StudentClass.create(student_id: 14, teacher_class_id: 6)
# StudentClass.create(student_id: 14, teacher_class_id: 10)
# StudentClass.create(student_id: 14, teacher_class_id: 14)
# StudentClass.create(student_id: 15, teacher_class_id: 3)
# StudentClass.create(student_id: 15, teacher_class_id: 7)
# StudentClass.create(student_id: 15, teacher_class_id: 11)
# StudentClass.create(student_id: 15, teacher_class_id: 15)
# StudentClass.create(student_id: 16, teacher_class_id: 4)
# StudentClass.create(student_id: 16, teacher_class_id: 8)
# StudentClass.create(student_id: 16, teacher_class_id: 12)
# StudentClass.create(student_id: 16, teacher_class_id: 16)

# StudentClass.create(student_id: 17, teacher_class_id: 1)
# StudentClass.create(student_id: 17, teacher_class_id: 5)
# StudentClass.create(student_id: 17, teacher_class_id: 9)
# StudentClass.create(student_id: 17, teacher_class_id: 13)
# StudentClass.create(student_id: 18, teacher_class_id: 2)
# StudentClass.create(student_id: 18, teacher_class_id: 6)
# StudentClass.create(student_id: 18, teacher_class_id: 10)
# StudentClass.create(student_id: 18, teacher_class_id: 14)
# StudentClass.create(student_id: 19, teacher_class_id: 3)
# StudentClass.create(student_id: 19, teacher_class_id: 7)
# StudentClass.create(student_id: 19, teacher_class_id: 11)
# StudentClass.create(student_id: 19, teacher_class_id: 15)
# StudentClass.create(student_id: 20, teacher_class_id: 4)
# StudentClass.create(student_id: 20, teacher_class_id: 8)
# StudentClass.create(student_id: 20, teacher_class_id: 12)
# StudentClass.create(student_id: 20, teacher_class_id: 16)

puts "creating conversations"
Conversation.create(teacher_id: 1, student_id: 1, klass: "Biology", topic: "homework", urgency: "immediate", office_hours: true, description: "help", teacher_response: false)
Conversation.create(teacher_id: 2, student_id: 2, klass: "Biology", topic: "homework", urgency: "immediate", office_hours: true, description: "help", teacher_response: false)
Conversation.create(teacher_id: 2, student_id: 3, klass: "Biology", topic: "homework", urgency: "immediate", office_hours: true, description: "help", teacher_response: false)
Conversation.create(teacher_id: 3, student_id: 4, klass: "Math", topic: "homework", urgency: "immediate", office_hours: true, description: "help", teacher_response: false)
Conversation.create(teacher_id: 4, student_id: 5, klass: "Math", topic: "homework", urgency: "immediate", office_hours: true, description: "help", teacher_response: false)
