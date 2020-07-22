class TeacherSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :subject, :email, :display_name, :username
    has_many :teacher_classes
    has_many :conversations
end