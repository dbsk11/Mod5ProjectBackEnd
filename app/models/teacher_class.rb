class TeacherClass < ApplicationRecord
  belongs_to :teacher
  belongs_to :klass 
  has_many :student_classes
end
