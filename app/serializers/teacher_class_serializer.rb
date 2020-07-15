class TeacherClassSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :klass
end