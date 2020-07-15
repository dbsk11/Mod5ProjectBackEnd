class StudentClassSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :teacher_class
end