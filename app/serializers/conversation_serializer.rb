class ConversationSerializer < ActiveModel::Serializer
    attributes :id, :student, :teacher, :klass, :topic, :urgency, :office_hours, :description, :teacher_response, :response, :time, :created_at
end