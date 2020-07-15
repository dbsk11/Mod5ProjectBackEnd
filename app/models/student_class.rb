class StudentClass < ApplicationRecord
  belongs_to :student
  belongs_to :teacher_class
end
