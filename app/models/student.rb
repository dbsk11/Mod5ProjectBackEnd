class Student < ApplicationRecord
    has_many :conversations
    has_many :teachers, through: :conversations
    has_many :student_classes
    has_many :teacher_classes, through: :student_classes

    def display_age
        Time.now.year - self.dob.slice(0,4).to_i
    end
    
end
