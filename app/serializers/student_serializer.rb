class StudentSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :age, :dob, :display_age
    has_many :student_classes
    has_many :conversations
end