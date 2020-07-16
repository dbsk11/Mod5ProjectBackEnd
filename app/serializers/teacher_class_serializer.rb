class TeacherClassSerializer < ActiveModel::Serializer
    attributes :id, :teacher_id
    belongs_to :klass
end