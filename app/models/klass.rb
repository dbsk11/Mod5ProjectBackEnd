class Klass < ApplicationRecord
    has_many :teacher_classes
    has_many :teachers, through: :teacher_classes
end
